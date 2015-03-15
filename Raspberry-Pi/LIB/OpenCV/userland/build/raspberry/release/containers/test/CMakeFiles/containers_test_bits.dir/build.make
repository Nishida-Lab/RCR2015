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
CMAKE_SOURCE_DIR = /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release

# Include any dependencies generated for this target.
include containers/test/CMakeFiles/containers_test_bits.dir/depend.make

# Include the progress variables for this target.
include containers/test/CMakeFiles/containers_test_bits.dir/progress.make

# Include the compile flags for this target's objects.
include containers/test/CMakeFiles/containers_test_bits.dir/flags.make

containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.o: containers/test/CMakeFiles/containers_test_bits.dir/flags.make
containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.o: ../../../containers/test/test_bits.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.o"
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/containers_test_bits.dir/test_bits.c.o   -c /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/containers/test/test_bits.c

containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/containers_test_bits.dir/test_bits.c.i"
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/containers/test/test_bits.c > CMakeFiles/containers_test_bits.dir/test_bits.c.i

containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/containers_test_bits.dir/test_bits.c.s"
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/containers/test/test_bits.c -o CMakeFiles/containers_test_bits.dir/test_bits.c.s

containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.o.requires:
.PHONY : containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.o.requires

containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.o.provides: containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.o.requires
	$(MAKE) -f containers/test/CMakeFiles/containers_test_bits.dir/build.make containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.o.provides.build
.PHONY : containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.o.provides

containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.o.provides.build: containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.o

# Object files for target containers_test_bits
containers_test_bits_OBJECTS = \
"CMakeFiles/containers_test_bits.dir/test_bits.c.o"

# External object files for target containers_test_bits
containers_test_bits_EXTERNAL_OBJECTS =

../../bin/containers_test_bits: containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.o
../../bin/containers_test_bits: containers/test/CMakeFiles/containers_test_bits.dir/build.make
../../bin/containers_test_bits: ../../lib/libcontainers.so
../../bin/containers_test_bits: ../../lib/libvcos.so
../../bin/containers_test_bits: containers/test/CMakeFiles/containers_test_bits.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../../../bin/containers_test_bits"
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/containers_test_bits.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
containers/test/CMakeFiles/containers_test_bits.dir/build: ../../bin/containers_test_bits
.PHONY : containers/test/CMakeFiles/containers_test_bits.dir/build

containers/test/CMakeFiles/containers_test_bits.dir/requires: containers/test/CMakeFiles/containers_test_bits.dir/test_bits.c.o.requires
.PHONY : containers/test/CMakeFiles/containers_test_bits.dir/requires

containers/test/CMakeFiles/containers_test_bits.dir/clean:
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test && $(CMAKE_COMMAND) -P CMakeFiles/containers_test_bits.dir/cmake_clean.cmake
.PHONY : containers/test/CMakeFiles/containers_test_bits.dir/clean

containers/test/CMakeFiles/containers_test_bits.dir/depend:
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/containers/test /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test/CMakeFiles/containers_test_bits.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : containers/test/CMakeFiles/containers_test_bits.dir/depend

