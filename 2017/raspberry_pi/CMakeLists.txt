cmake_minimum_required(VERSION 3.0)
project(robocar VERSION 0.0.0 LANGUAGES CXX)

add_definitions("-std=c++14 -Wall -O3")
# add_definitions("-std=c++14 -Wall")

set(CMAKE_CXX_COMPILER clang++)

file(GLOB ${PROJECT_NAME}_SOURCES ${PROJECT_SOURCE_DIR}/src/*.cpp)
set(${PROJECT_NAME}_HEADER_DIR ${PROJECT_SOURCE_DIR}/include)

configure_file(
  ${PROJECT_SOURCE_DIR}/configure/version.hpp.cmake
  ${${PROJECT_NAME}_HEADER_DIR}/${PROJECT_NAME}/version.hpp
)

configure_file(
  ${PROJECT_SOURCE_DIR}/configure/readme.md.cmake
  ${PROJECT_SOURCE_DIR}/readme.md
)

include_directories(
  ${${PROJECT_NAME}_HEADER_DIR}
)

link_directories(
)

add_executable(${PROJECT_NAME}
  ${${PROJECT_NAME}_SOURCES}
)

target_link_libraries(${PROJECT_NAME}
  wiringPi
  crypt
  rt
  m
  raspicam_cv
  opencv_core
  opencv_highgui
  opencv_imgproc
  pthread
)

