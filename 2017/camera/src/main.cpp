#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <string>

#include <raspicam/raspicam_cv.h>
#include <opencv2/imgproc/imgproc.hpp>

#include <camera/version.hpp>


namespace robocar {


template <typename T>
class color_range
  : public std::pair<T,T>
{
public:
  template <typename... Ts>
  color_range(Ts&&... args)
    : std::pair<T,T> {std::forward<Ts>(args)...}
  {}

  auto min() const noexcept
  {
    return (*this).first;
  }

  auto max() const noexcept
  {
    return (*this).second;
  }
}


class camera
  : public raspicam::RaspiCam_Cv
{
public:
  using image_type = cv::Mat;

private:
  image_type image_buffer_;

  static const uint16_t hmin_ { 10};
  static const uint16_t hmax_ {300};
  static const uint16_t smin_ { 30};
  static const uint16_t smax_ {100};
  static const uint16_t vmin_ { 50};
  static const uint16_t vmax_ {100};

  static const color_range<std::uint16_t> h_ { 10, 300};
  static const color_range<std::uint16_t> s_ { 30, 100};
  static const color_range<std::uint16_t> v_ { 50, 100};

public:
  camera(std::size_t width = 2592, std::size_t height = 1944)
    : raspicam::RaspiCam_Cv {},
      image_buffer_ {}
  {
    set(CV_CAP_PROP_FRAME_WIDTH,  width);
    set(CV_CAP_PROP_FRAME_HEIGHT, height);

    if (!open())
    {
      std::cerr << "[error] failed to open camera module\n";
      std::exit(EXIT_FAILURE);
    }

    std::cout << "[debug] connected to camera module: " << getId() << std::endl;
  }

  ~camera()
  {
    release();
  }

  void read()
  {
    grab();
    retrieve(image_buffer_);
  }

  void write(const std::string& s)
  {
    cv::imwrite("hoge_rgb.jpg", image_buffer_);
    cv::imwrite("hoge_bin.jpg", hoge(image_buffer_));
  }

private:
  image_type hoge(const image_type& rgb)
  {
    image_type binary {cv::Mat::zeros(rgb.size(), CV_8UC1)};
    image_proc(rgb, binary);

    return binary;
  }

  void image_proc(const image_type& rgb, image_type& binary)
  {
    image_type blur {}, hsv {};

    cv::GaussianBlur(rgb, blur, cv::Size(5, 5), 4.0, 4.0);
    cv::cvtColor(blur, hsv, CV_BGR2HSV);

    red_filter(hsv, binary);

    cv::dilate(binary, binary, cv::Mat {}, cv::Point(-1, -1), 2);
    cv::erode(binary, binary, cv::Mat {}, cv::Point(-1, -1), 4);
    cv::dilate(binary, binary, cv::Mat {}, cv::Point(-1, -1), 1);
  }

  void red_filter(const cv::Mat& hsv, cv::Mat& binary)
  {
    for (int row {0}; row < hsv.rows; ++row)
    {
      for (int col {0}; col < hsv.cols; ++col)
      {
        std::size_t a {hsv.step * row + col * 3};

        if ((hsv.data[a] <= hmin_ || hsv.data[a] >= hmax_) && (hsv.data[a+1] >= smin_) && (hsv.data[a+2] >= vmin_))
        {
          binary.at<unsigned char>(row, col) = 255;
        }

        else
        {
          binary.at<unsigned char>(row, col) = 0;
        }
      }
    }
  }
};



} // namespace robocar


int main(int argc, char** argv)
{
  robocar::camera camera {2592, 1944};

  camera.read();
  camera.write("hoge.jpg");

  return 0;
}

