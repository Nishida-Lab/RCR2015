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

# Include any dependencies generated for this target.
include containers/test/CMakeFiles/containers_datagram_receiver.dir/depend.make

# Include the progress variables for this target.
include containers/test/CMakeFiles/containers_datagram_receiver.dir/progress.make

# Include the compile flags for this target's objects.
include containers/test/CMakeFiles/containers_datagram_receiver.dir/flags.make

containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o: containers/test/CMakeFiles/containers_datagram_receiver.dir/flags.make
containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o: ../../../containers/test/datagram_receiver.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/containers/test/datagram_receiver.c

containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/containers/test/datagram_receiver.c > CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.i

containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/containers/test/datagram_receiver.c -o CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.s

containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o.requires:
.PHONY : containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o.requires

containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o.provides: containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o.requires
	$(MAKE) -f containers/test/CMakeFiles/containers_datagram_receiver.dir/build.make containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o.provides.build
.PHONY : containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o.provides

containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o.provides.build: containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o

# Object files for target containers_datagram_receiver
containers_datagram_receiver_OBJECTS = \
"CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o"

# External object files for target containers_datagram_receiver
containers_datagram_receiver_EXTERNAL_OBJECTS =

../../bin/containers_datagram_receiver: containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o
../../bin/containers_datagram_receiver: containers/test/CMakeFiles/containers_datagram_receiver.dir/build.make
../../bin/containers_datagram_receiver: ../../lib/libcontainers.so
../../bin/containers_datagram_receiver: ../../lib/libvcos.so
../../bin/containers_datagram_receiver: containers/test/CMakeFiles/containers_datagram_receiver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../../../bin/containers_datagram_receiver"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/containers_datagram_receiver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
containers/test/CMakeFiles/containers_datagram_receiver.dir/build: ../../bin/containers_datagram_receiver
.PHONY : containers/test/CMakeFiles/containers_datagram_receiver.dir/build

containers/test/CMakeFiles/containers_datagram_receiver.dir/requires: containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o.requires
.PHONY : containers/test/CMakeFiles/containers_datagram_receiver.dir/requires

containers/test/CMakeFiles/containers_datagram_receiver.dir/clean:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test && $(CMAKE_COMMAND) -P CMakeFiles/containers_datagram_receiver.dir/cmake_clean.cmake
.PHONY : containers/test/CMakeFiles/containers_datagram_receiver.dir/clean

containers/test/CMakeFiles/containers_datagram_receiver.dir/depend:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/containers/test /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/test/CMakeFiles/containers_datagram_receiver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : containers/test/CMakeFiles/containers_datagram_receiver.dir/depend

