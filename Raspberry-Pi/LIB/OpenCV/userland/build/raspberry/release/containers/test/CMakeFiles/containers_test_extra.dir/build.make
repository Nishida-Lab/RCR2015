# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release

# Utility rule file for containers_test_extra.

# Include the progress variables for this target.
include containers/test/CMakeFiles/containers_test_extra.dir/progress.make

containers/test/CMakeFiles/containers_test_extra:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/containers/test && touch nb_io_win32.c autotest.cpp crc_32.c

containers_test_extra: containers/test/CMakeFiles/containers_test_extra
containers_test_extra: containers/test/CMakeFiles/containers_test_extra.dir/build.make
.PHONY : containers_test_extra

# Rule to build all files generated by this target.
containers/test/CMakeFiles/containers_test_extra.dir/build: containers_test_extra
.PHONY : containers/test/CMakeFiles/containers_test_extra.dir/build

containers/test/CMakeFiles/containers_test_extra.dir/clean:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test && $(CMAKE_COMMAND) -P CMakeFiles/containers_test_extra.dir/cmake_clean.cmake
.PHONY : containers/test/CMakeFiles/containers_test_extra.dir/clean

containers/test/CMakeFiles/containers_test_extra.dir/depend:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/containers/test /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test/CMakeFiles/containers_test_extra.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : containers/test/CMakeFiles/containers_test_extra.dir/depend

