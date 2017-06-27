#include <algorithm>
#include <chrono>
#include <cmath>
#include <complex> // atanh
// #include <cstdint>
// #include <cstdlib>
#include <cstring>
#include <iomanip>
#include <iostream>
#include <regex>
#include <stdexcept>
#include <string>
#include <system_error>
#include <thread>
#include <unordered_map>
#include <utility>
#include <vector>

#include <robocar/camera/camera.hpp>
#include <robocar/driver/driver.hpp>
#include <robocar/driver/radio_controler.hpp>
#include <robocar/sensor/sensor_node.hpp>
#include <robocar/sensor/wiring_serial.hpp> // TODO CLEANUP
#include <robocar/vector/vector.hpp>
#include <robocar/version.hpp>


int main(int argc, char** argv) try
{
  std::cout << "[debug] project version: " << project_version.data() << " (" << cmake_build_type.data() << ")\n";
  std::cout << "[debug]   boost version: " <<   boost_version.data() << "\n\n";


  robocar::sensor_node<char> sensor {"/dev/ttyACM0", 115200};

  static constexpr std::size_t width  {640};
  static constexpr std::size_t height {480};
  robocar::camera camera {width, height};

  robocar::differential_driver driver {
    std::pair<int,int> {35, 38}, std::pair<int,int> {37, 40}
  };


  sensor["distance"]["long"]["south_west"].set_code(0);
  sensor["distance"]["long"][      "west"].set_code(1);
  sensor["distance"]["long"]["north_west"].set_code(2);
  sensor["distance"]["long"]["north"     ].set_code(3);
  sensor["distance"]["long"]["north_east"].set_code(4);
  sensor["distance"]["long"][      "east"].set_code(5);
  sensor["distance"]["long"]["south_east"].set_code(6);

  sensor["distance"]["short"]["north_west"].set_code(10);
  sensor["distance"]["short"]["north"     ].set_code(11);
  sensor["distance"]["short"]["north_east"].set_code(12);

  sensor["accel"]["x"].set_code(7);
  sensor["accel"]["y"].set_code(8);
  sensor["accel"]["z"].set_code(9);

  sensor["angle"]["x"].set_code(13);
  sensor["angle"]["y"].set_code(14);
  sensor["angle"]["z"].set_code(15);


  std::vector<std::vector<robocar::vector<double>>> predefined_field {
    {{ 1.0,  0.0}, { 0.0, -1.0}, { 0.0, -1.0}, { 0.0, -1.0}, { 0.0, -1.0}, { 0.0, -1.0}},
    {{ 0.0,  1.0}, { 0.0, -1.0}, { 0.0, -1.0}, { 0.0, -1.0}, { 0.0, -1.0}, {-1.0, -1.0}},
    {{ 0.0,  1.0}, { 0.0, -1.0}, { 0.0, -1.0}, { 0.0, -1.0}, {-1.0, -1.0}, {-1.0,  0.0}},
    {{ 0.0,  1.0}, { 0.0, -1.0}, { 0.0, -1.0}, {-1.0, -1.0}, {-1.0,  0.0}, {-1.0,  0.0}},
    {{ 0.0,  1.0}, { 0.0, -1.0}, {-1.0, -1.0}, {-1.0,  0.0}, {-1.0,  0.0}, {-1.0,  0.0}},
    {{ 0.0,  1.0}, {-1.0,  0.0}, {-1.0,  0.0}, {-1.0,  0.0}, {-1.0,  0.0}, {-1.0,  0.0}}
  };

  for (auto&& row : predefined_field) { for (auto&& v : row) { v.normalized(); } }


  static constexpr double range_min {0.03};
  static constexpr double range_mid {0.45};
  static constexpr double range_max {0.90};

  auto avoid_vector = [&]()
  {
    robocar::vector<double> result {0.0, 0.0};

    const std::unordered_map<std::string, robocar::vector<double>> nearest_neighbor {
      {"north_west", { 1.0, -1.0}}, {"north", { 0.0, -1.0}}, {"north_east", {-1.0, -1.0}},
      {      "west", { 1.0,  1.0}},                          {      "east", {-1.0,  0.0}},
      {"south_west", { 1.0,  1.0}}, {"south", { 0.0,  1.0}}, {"south_east", {-1.0,  1.0}}
    };

    for (const auto& psd : sensor["distance"]["long"])
    {
      double buffer;

      if (std::regex_search(psd.first, std::regex {"north"}))
      {
        std::cout << "[debug] find north: " << psd.first << std::endl;

        sensor["distance"]["short"][psd.first] >> buffer;
        buffer = 0.09999 * buffer + 0.4477;

        if (0.18 < buffer)
        {
          *(psd.second) >> buffer;
          buffer = 45.514 * std::pow(buffer, -0.822);
        }
      }
      else
      {
        *(psd.second) >> buffer;
        buffer = 45.514 * std::pow(buffer, -0.822);
      }

      double repulsive_force;

      if (range_min < buffer && buffer < range_mid)
      {
        double x {(buffer - range_min) / (range_mid - range_min)};
        repulsive_force = -std::atanh(x - 1.0);
      }
      else if (range_mid <= buffer && buffer < range_max)
      {
        double x {buffer / range_mid};
        repulsive_force = -std::atanh(x - 1.0);
      }
      else
      {
        repulsive_force = -std::atanh(range_mid - 1);
      }

      result += nearest_neighbor.at(psd.first) * repulsive_force;
    }

    return result;
  };


  auto search = [&]() // TODO MOVE TO CAMERA.HPP
    -> std::vector<robocar::vector<double>>
  {
    std::vector<robocar::vector<double>> poles {};

    for (const auto& p : camera.find())
    {
      int x_pixel {static_cast<int>(p.first)  - static_cast<int>(width / 2)};
      double x_ratio {static_cast<double>(x_pixel) / static_cast<double>(width / 2)};

      poles.emplace_back(x_ratio, std::pow(static_cast<double>(1.0) - std::pow(x_ratio, 2.0), 0.5));
    }

    std::sort(poles.begin(), poles.end(), [&](auto a, auto b) {
      return std::abs(a[0]) < std::abs(b[0]);
    });

    return poles;
  };


  std::this_thread::sleep_for(std::chrono::seconds(3));

  for (auto begin = std::chrono::high_resolution_clock::now(),
             last = std::chrono::high_resolution_clock::now();
       std::chrono::duration_cast<std::chrono::seconds>(last - begin) < std::chrono::seconds {30};
       last = std::chrono::high_resolution_clock::now())
  {
    // auto poles {search()};

    // auto target_vector {
    //   poles.empty() ? predefined_filed[sensor["position"]["y"].get()/grid_size][sensor["position"]["x"].get()/grid_size] : poles.front().normalized()
    // };

    driver.write(avoid_vector(), 0.18, 0.5);

#ifndef NDEBUG
    auto  t = std::chrono::duration_cast<std::chrono::seconds>(last - begin);
    auto dt = std::chrono::duration_cast<std::chrono::microseconds>(std::chrono::high_resolution_clock::now() - last);

    std::cout << std::fixed << std::setw(2) << "\r\e[K[debug] t: " << t.count() << ", dt: " << dt.count() << "[msec]" << std::flush;
#endif
  }



  // for (robocar::radio_controler ps3joy {"/dev/input/js0"}; ;)
  // {
  //   ps3joy.update();
  //
  //   robocar::vector<double> direction {
  //     ps3joy.axis[0] / static_cast<double>(std::numeric_limits<std::int16_t>::max()),
  //    -ps3joy.axis[1] / static_cast<double>(std::numeric_limits<std::int16_t>::max())
  //   };
  //
  //   driver.write(direction, 0.18, 0.5);
  // }


  return 0;
}

catch (std::logic_error& error)
{
  std::cerr << "[error] logic_error: " << error.what() << std::endl;
  std::exit(EXIT_FAILURE);
}

catch (std::system_error& error)
{
  std::cerr << "[error] code: " << error.code().value() << " - " << error.code().message() << std::endl;
  std::exit(EXIT_FAILURE);
}

catch (...)
{
  std::cerr << "[fatal] An unexpected error occurred. Report the following output to the developer.\n"
            << "        error: " << errno << " - " << std::strerror(errno) << std::endl;

  std::exit(EXIT_FAILURE);
}

