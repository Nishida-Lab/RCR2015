#include <iostream>
#include <regex>
#include <string>
#include <utility>
#include <vector>

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

#include <debugger/version.hpp>


#define function_alias(func, alias)         \
template <typename... Ts>                   \
inline decltype(auto) alias(Ts&&... args)   \
{ return func(std::forward<Ts>(args)...); } \

function_alias(cv::cvtColor, convert_color);


int main(int argc, char** argv)
{
  const std::vector<std::string> argv_ {argv, argv + argc};

  std::string name {""};


  for (auto iter {argv_.begin() + 1}; iter != argv_.end(); ++iter) [&]()
  {
    for (const auto& s : decltype(argv_) {"^-h$", "^--help$"})
    {
      if (std::regex_match(*iter, std::regex {s}))
      {
        std::cout << "rather, please help me\n";
        return;
      }
    }

    for (const auto& s : decltype(argv_) {"^-v$", "^--version$"})
    {
      if (std::regex_match(*iter, std::regex {s}))
      {
        std::cout << "version " << project_version.data() << " alpha\n";
        return;
      }
    }

    for (const auto& s : decltype(argv_) {"^-f$", "^--file$"})
    {
      if (std::regex_match(*iter, std::regex {s}))
      {
        if (++iter != argv_.end())
        {
          name = *iter;
        }

        else
        {
          std::cerr << "[error] invalid argument\n";
          std::exit(1);
        }

        return;
      }
    }

    std::cerr << "[error] unknown option \"" << *iter << "\"\n";
  }();


  const cv::Mat3b origin_image {
    cv::imread(name, CV_LOAD_IMAGE_COLOR)
  };

  if (!origin_image.data)
  {
    std::cerr << "[error] failed to open image: " << name << std::endl;
    std::exit(EXIT_FAILURE);
  }

  cv::namedWindow("origin", cv::WINDOW_AUTOSIZE);
  cv::imshow("origin", origin_image);


  const cv::Mat3b cutted_image {
    origin_image,
    cv::Rect {0, static_cast<int>(origin_image.size().height * 0.5), origin_image.size().width, static_cast<int>(origin_image.size().height * 0.5)}
  };

  cv::namedWindow("cutted", cv::WINDOW_AUTOSIZE);
  cv::imshow("cutted", cutted_image);


  cv::Mat3b converted_image {};
  convert_color(cutted_image, converted_image, cv::COLOR_BGR2HSV);

  cv::namedWindow("converted", cv::WINDOW_AUTOSIZE);
  cv::imshow("converted", converted_image);


  std::vector<cv::Mat1b> splited_image {};
  cv::split(converted_image, splited_image);

  cv::namedWindow("splited_hue", cv::WINDOW_AUTOSIZE);
  cv::imshow("splited_hue", splited_image[0]);


  // 色相を180度回転する
  // OpenCVでは0~360度の色相が0~180に正規化されているため、値を90ずらす
  for (auto&& pixel : splited_image[0])
  {
    pixel += (pixel < 90 ? 90 : -89);
  }

  cv::namedWindow("spinned_hue", cv::WINDOW_AUTOSIZE);
  cv::imshow("spinned_hue", splited_image[0]);


  auto average {
    std::accumulate(std::begin(splited_image[0]), std::end(splited_image[0]), 0)
    / (splited_image[0].size().width * splited_image[0].size().height)
  };

  std::cout << "[debug] average: " << average << std::endl;


  // 俺フィルタ
  // 赤じゃないものほど赤じゃなくする
  for (auto&& pixel : splited_image[0])
  {
    static constexpr std::uint8_t target {90};

    if (pixel < target)
    {
      auto distance = (target - 1) - pixel;
      pixel = std::max(pixel * (1.0 - distance / static_cast<double>(target)), 0.0);
    }
    else
    {
      auto distance = pixel - target;
      pixel = std::min(pixel * (distance / static_cast<double>(target) + 1.0), 179.0);
    }
  }

  cv::namedWindow("filtered", cv::WINDOW_AUTOSIZE);
  cv::imshow("filtered", splited_image[0]);


  cv::Mat1b edge_image {};
  cv::Canny(splited_image[0], edge_image, 50, 200);

  cv::namedWindow("edge", cv::WINDOW_AUTOSIZE);
  cv::imshow("edge", edge_image);


  while (true)
  {
    cv::waitKey(0);
  }

  return 0;
}
