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
include containers/qsynth/CMakeFiles/reader_qsynth.dir/depend.make

# Include the progress variables for this target.
include containers/qsynth/CMakeFiles/reader_qsynth.dir/progress.make

# Include the compile flags for this target's objects.
include containers/qsynth/CMakeFiles/reader_qsynth.dir/flags.make

containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o: containers/qsynth/CMakeFiles/reader_qsynth.dir/flags.make
containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o: ../../../containers/qsynth/qsynth_reader.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o"
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/qsynth && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o   -c /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/containers/qsynth/qsynth_reader.c

containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/reader_qsynth.dir/qsynth_reader.c.i"
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/qsynth && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/containers/qsynth/qsynth_reader.c > CMakeFiles/reader_qsynth.dir/qsynth_reader.c.i

containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/reader_qsynth.dir/qsynth_reader.c.s"
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/qsynth && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/containers/qsynth/qsynth_reader.c -o CMakeFiles/reader_qsynth.dir/qsynth_reader.c.s

containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o.requires:
.PHONY : containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o.requires

containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o.provides: containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o.requires
	$(MAKE) -f containers/qsynth/CMakeFiles/reader_qsynth.dir/build.make containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o.provides.build
.PHONY : containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o.provides

containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o.provides.build: containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o

# Object files for target reader_qsynth
reader_qsynth_OBJECTS = \
"CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o"

# External object files for target reader_qsynth
reader_qsynth_EXTERNAL_OBJECTS =

../../lib/reader_qsynth.so: containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o
../../lib/reader_qsynth.so: containers/qsynth/CMakeFiles/reader_qsynth.dir/build.make
../../lib/reader_qsynth.so: ../../lib/libcontainers.so
../../lib/reader_qsynth.so: ../../lib/libvcos.so
../../lib/reader_qsynth.so: containers/qsynth/CMakeFiles/reader_qsynth.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../../../lib/reader_qsynth.so"
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/qsynth && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reader_qsynth.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
containers/qsynth/CMakeFiles/reader_qsynth.dir/build: ../../lib/reader_qsynth.so
.PHONY : containers/qsynth/CMakeFiles/reader_qsynth.dir/build

containers/qsynth/CMakeFiles/reader_qsynth.dir/requires: containers/qsynth/CMakeFiles/reader_qsynth.dir/qsynth_reader.c.o.requires
.PHONY : containers/qsynth/CMakeFiles/reader_qsynth.dir/requires

containers/qsynth/CMakeFiles/reader_qsynth.dir/clean:
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/qsynth && $(CMAKE_COMMAND) -P CMakeFiles/reader_qsynth.dir/cmake_clean.cmake
.PHONY : containers/qsynth/CMakeFiles/reader_qsynth.dir/clean

containers/qsynth/CMakeFiles/reader_qsynth.dir/depend:
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/containers/qsynth /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/qsynth /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/qsynth/CMakeFiles/reader_qsynth.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : containers/qsynth/CMakeFiles/reader_qsynth.dir/depend

