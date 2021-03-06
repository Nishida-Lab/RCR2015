#include <iostream>
#include <limits>
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


// 俺フィルタ改
template <typename T, typename U>
static auto emphasize(T& image, U&& target_value,
                                U&& min = std::numeric_limits<U>::min(),
                                U&& max = std::numeric_limits<U>::max())
{
  for (auto&& pixel : image)
  {
    if (pixel < target_value)
    {
      double distance {static_cast<double>(target_value - pixel - 1)};
      pixel = std::max(pixel * (1.0 - distance / target_value), static_cast<double>(min));
    }
    else
    {
      double distance {static_cast<double>(pixel - target_value)};
      pixel = std::min(pixel * (1.0 + distance / target_value), static_cast<double>(max));
    }
  }

  return image;
}


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
#ifndef NDEBUG
  cv::imwrite("debug/image1_origin.jpg", origin_image);
#endif

  const cv::Mat3b cutted_image {
    origin_image,
    cv::Rect {0, static_cast<int>(origin_image.size().height * 0.5), origin_image.size().width, static_cast<int>(origin_image.size().height * 0.5)}
    // origin_image
  };

  cv::namedWindow("cutted", cv::WINDOW_AUTOSIZE);
  cv::imshow("cutted", cutted_image);
#ifndef NDEBUG
  cv::imwrite("debug/image2_cutted.jpg", cutted_image);
#endif


  cv::Mat3b converted_image {};
  convert_color(cutted_image, converted_image, cv::COLOR_BGR2HSV);

  cv::namedWindow("converted", cv::WINDOW_AUTOSIZE);
  cv::imshow("converted", converted_image);


  std::vector<cv::Mat1b> splited_image {};
  cv::split(converted_image, splited_image);

  cv::namedWindow("splited_hue", cv::WINDOW_AUTOSIZE);
  cv::imshow("splited_hue", splited_image[0]);
#ifndef NDEBUG
  cv::imwrite("debug/image3_default_hue.jpg", splited_image[0]);
#endif


  // 色相を180度回転する
  // OpenCVでは0~360度の色相が0~180に正規化されているため、値を90ずらす
  for (auto&& pixel : splited_image[0])
  {
    pixel += (pixel < 90 ? 90 : -89);
  }

  cv::namedWindow("spinned_hue", cv::WINDOW_AUTOSIZE);
  cv::imshow("spinned_hue", splited_image[0]);
#ifndef NDEBUG
  cv::imwrite("debug/image4_spinned_hue.jpg", splited_image[0]);
#endif

  // 赤色が環境によって変化することが予想されるため
  // （夕日に照らされたらすべてのものがオレンジっぽく見えてしまうみたいに），
  // 画像の色相平均値（おそらく床の色相に近くなると思われ）を求めて
  // そこから幾らか値をずらしたものを俺フィルタのターゲットにすれば良いのか？
  auto average {
    std::accumulate(std::begin(splited_image[0]), std::end(splited_image[0]), 0)
    / (splited_image[0].size().width * splited_image[0].size().height)
  };
  std::cout << "[debug] average: " << average << std::endl;


  // 俺フィルタ
  // 引数の色相から遠いものほど遠くする
  // 目標の色以外が，ゼロと最大値に二極化するのが嫌なので適当に最大側はゼロに飛ばしてる
  auto emphasize_specific_hue = [&](auto&& hue)
  {
    for (auto&& pixel : splited_image[0])
    {
      if (pixel < hue)
      {
        auto distance = (hue - 1) - pixel;
        // pixel = std::max(pixel * (1.0 - distance / static_cast<double>(hue)), 0.0);
        pixel *= (1.0 - distance / static_cast<double>(hue));

        if (pixel < 1)
        {
          pixel = 179;
        }
      }
      else
      {
        auto distance = pixel - hue;
        pixel = std::min(pixel * (distance / static_cast<double>(hue) + 1.0), 179.0);
      }
    }
  };


  std::size_t iteration {5};
  for (std::size_t iter {0}; iter < iteration; ++iter)
  {
    // emphasize_specific_hue(average + 20);
    emphasize(splited_image[0], average + 0, 0, 179);
    for (auto&& pixel : splited_image[0]) { pixel = (pixel < 10 ? 179 : pixel); }
    cv::imwrite(std::string {"debug/image5-"} + std::to_string(iter) + "_filtering.jpg", splited_image[0]);

    // if (i == (iteration - 1))
    if (true)
    {
      cv::namedWindow(std::string {"emphasize_"} + std::to_string(iter), cv::WINDOW_AUTOSIZE);
      cv::imshow(std::string {"emphasize_"} + std::to_string(iter), splited_image[0]);
    }
  }

  for (auto&& pixel : splited_image[0])
  {
    pixel = (pixel < 10 ? 179 : pixel);
  }

#ifndef NDEBUG
  cv::imwrite("debug/image5_filtered.jpg", splited_image[0]);
#endif

  cv::morphologyEx(splited_image[0], splited_image[0], cv::MORPH_CLOSE,
                   cv::Mat1b {}, cv::Point {-1, -1}, 3);

  cv::namedWindow("morphology", cv::WINDOW_AUTOSIZE);
  cv::imshow("morphology", splited_image[0]);
#ifndef NDEBUG
  cv::imwrite("debug/image6_morphology.jpg", splited_image[0]);
#endif


  cv::Mat1b edge_image {};
  cv::Canny(splited_image[0], edge_image, 50, 200);

  cv::namedWindow("edge", cv::WINDOW_AUTOSIZE);
  cv::imshow("edge", edge_image);
#ifndef NDEBUG
  cv::imwrite("debug/image7_edge.jpg", edge_image);
#endif


  static std::vector<std::vector<cv::Point>> contours {};
  cv::findContours(edge_image, contours, CV_RETR_LIST, CV_CHAIN_APPROX_SIMPLE);

  // std::cout << "[debug] size: " << contours.size() << std::endl;
  //
  cv::Mat3b contours_image {cutted_image};
  cv::drawContours(contours_image, contours, -1, cv::Scalar {255, 0, 0}, CV_FILLED);
#ifndef NDEBUG
  cv::imwrite("debug/image8_all_contours.jpg", contours_image);
#endif


  // static std::vector<std::pair<std::size_t, std::size_t>> moments {};
  // for (const auto& points : contours)
  // {
  //   auto moment {cv::moments(points)};
  //   moments.emplace_back(moment.m10 / moment.m00, moment.m01 / moment.m00);
  //
  //   cv::Point point {
  //     static_cast<int>(moment.m10 / moment.m00),
  //     static_cast<int>(moment.m01 / moment.m00)
  //   };
  //   cv::circle(contours_image, point, 10, cv::Scalar {0, 0, 255});
  // }


  std::pair<double, std::vector<cv::Point>> area_max {0.0, {}};
  for (const auto& points : contours)
  {
    double area {cv::contourArea(points)};
    if (area_max.first < area)
    {
      area_max.first = area;
      area_max.second = points;
    }
    std::cout << "[debug] area: " << area << ", area_max: " << area_max.first << std::endl;
  }

  cv::drawContours(contours_image, std::vector<std::vector<cv::Point>> {area_max.second}, -1, cv::Scalar {0, 255, 0}, CV_FILLED);
#ifndef NDEBUG
  cv::imwrite("debug/image8_maxarea_contours.jpg", contours_image);
#endif

  auto moment {cv::moments(area_max.second)};

  cv::Point point {
    static_cast<int>(moment.m10 / moment.m00),
    static_cast<int>(moment.m01 / moment.m00)
  };
  cv::circle(contours_image, point, 10, cv::Scalar {0, 0, 255});

  cv::namedWindow("contours", cv::WINDOW_AUTOSIZE);
  cv::imshow("contours", contours_image);
#ifndef NDEBUG
  cv::imwrite("debug/image9_maxarea_contour_moment.jpg", contours_image);
#endif



  while (true)
  {
    cv::waitKey(0);
  }

  return 0;
}

