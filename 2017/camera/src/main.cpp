#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <string>
#include <vector>

#include <raspicam/raspicam_cv.h>
#include <opencv2/imgproc/imgproc.hpp>

#include <camera/version.hpp>
#include <camera/color_range.hpp>


#define CONSOLE_DEBUG
#undef  CONSOLE_DEBUG


namespace robocar {


class camera
  : public raspicam::RaspiCam_Cv
{
public:
  using image_type = cv::Mat;

private:
  image_type image_buffer_;

  const color_range<std::uint16_t> h_ { 30, 330};
  const color_range<std::uint16_t> s_ { 30, 100};
  const color_range<std::uint16_t> v_ { 50, 100};

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

  void debug()
  {
    read();

    static const std::string prefix {"debug_"};

    cv::imwrite(prefix + "raw.jpg", image_buffer_);

    auto bin {binarize(image_buffer_)};
    cv::imwrite(prefix + "bin.jpg", bin);
  }

  // void write(const std::string& s)
  // {
  //   cv::imwrite("hoge_rgb.jpg", image_buffer_);
  //   cv::imwrite("hoge_bin.jpg", hoge(image_buffer_));
  // }

private:
  auto binarize(const image_type& rgb)
    -> image_type
  {
    return image_type {cv::Mat::zeros(rgb.size(), CV_8UC1)};
  }

  void image_proc(const image_type& rgb, image_type& binary)
  {
    image_type hsv {};

    cv::cvtColor(rgb, hsv, CV_BGR2HSV);

    binary = red_mask(hsv);

    cv::dilate(binary, binary, cv::Mat {}, cv::Point(-1, -1), 2);
    cv::erode( binary, binary, cv::Mat {}, cv::Point(-1, -1), 4);
    cv::dilate(binary, binary, cv::Mat {}, cv::Point(-1, -1), 1);
  }

  cv::Mat1b red_mask(const cv::Mat3b& hsv) // TODO move to ctor
  {
    static cv::Mat1b mask1 {}, mask2 {};

    cv::inRange(hsv, cv::Scalar(  0,  70,  50), cv::Scalar(  0, 255, 255), mask1);
    cv::inRange(hsv, cv::Scalar(150,  70,  50), cv::Scalar(180, 255, 255), mask2);

    return cv::Mat1b {mask1 | mask2};
  }

  auto find_contours(const cv::Mat1b& bin) const
    -> cv::Mat1b
  {
    std::vector<std::vector<cv::Point>> contours {};
    auto result {bin};

    cv::findContours(bin, contours, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_NONE);
    // cv::findContours(bin, contours, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE);

    for (std::size_t i {0}; i < contours.size(); ++i)
    {
      cv::drawContours(result, contours, i, cv::Scalar(255, 0, 0), 3);
    }

    return result;
  }
};


} // namespace robocar


int main(int argc, char** argv)
{
  robocar::camera camera {1280, 960};

  // camera.read();
  // camera.write("hoge.jpg");

  camera.debug();

  return 0;
}

