#include <tuple>
#include <utility>
#include <vector>

#include <ros/ros.h>


namespace rcr {


class colored_pole
{
public:
  using color_type = std::tuple<int,int,int>;
  using coord_type = std::pair<double, double>;

  static constexpr color_type red    {0xff, 0x00, 0x00};
  static constexpr color_type yellow {0xff, 0xff, 0x00};
  static constexpr color_type blue   {0x00, 0x00, 0xff};

  static constexpr double window_width  {500};
  static constexpr double window_height {500};

private:
  const coord_type coord_;

public:
  colored_pole(coord_type&& coord)
    : coord_ {range_check(std::forward<decltype(coord)>(coord))}
  {}

private:
  static auto range_check(coord_type&& coord)
    -> coord_type
  {
    coord.first = (coord.first < 0 ? 0 : (window_width < coord.first ? window_width : coord.first));
    coord.second = (coord.second < 0 ? 0 : (window_height < coord.second ? window_height : coord.second));
    return std::forward<decltype(coord)>(coord);
  }
};


} // namespace rcr


int main(int argc, char** argv)
{
  ros::init(argc, argv, "colored_pole_node");

  ros::NodeHandle node_handle {"~"};

  std::vector<rcr::colored_pole> poles {
    {{100.0, 100.0}},
    {{200.0, 200.0}}
  };

  while (ros::ok())
  {
    ROS_INFO_STREAM(ros::this_node::getName());
  }

  return 0;
}
