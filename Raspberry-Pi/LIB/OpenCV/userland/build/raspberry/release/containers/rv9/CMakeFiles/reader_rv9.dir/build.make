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
include containers/rv9/CMakeFiles/reader_rv9.dir/depend.make

# Include the progress variables for this target.
include containers/rv9/CMakeFiles/reader_rv9.dir/progress.make

# Include the compile flags for this target's objects.
include containers/rv9/CMakeFiles/reader_rv9.dir/flags.make

containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.o: containers/rv9/CMakeFiles/reader_rv9.dir/flags.make
containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.o: ../../../containers/rv9/rv9_reader.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/rv9 && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/reader_rv9.dir/rv9_reader.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/containers/rv9/rv9_reader.c

containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/reader_rv9.dir/rv9_reader.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/rv9 && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/containers/rv9/rv9_reader.c > CMakeFiles/reader_rv9.dir/rv9_reader.c.i

containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/reader_rv9.dir/rv9_reader.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/rv9 && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/containers/rv9/rv9_reader.c -o CMakeFiles/reader_rv9.dir/rv9_reader.c.s

containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.o.requires:
.PHONY : containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.o.requires

containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.o.provides: containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.o.requires
	$(MAKE) -f containers/rv9/CMakeFiles/reader_rv9.dir/build.make containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.o.provides.build
.PHONY : containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.o.provides

containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.o.provides.build: containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.o

# Object files for target reader_rv9
reader_rv9_OBJECTS = \
"CMakeFiles/reader_rv9.dir/rv9_reader.c.o"

# External object files for target reader_rv9
reader_rv9_EXTERNAL_OBJECTS =

../../lib/reader_rv9.so: containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.o
../../lib/reader_rv9.so: containers/rv9/CMakeFiles/reader_rv9.dir/build.make
../../lib/reader_rv9.so: ../../lib/libcontainers.so
../../lib/reader_rv9.so: ../../lib/libvcos.so
../../lib/reader_rv9.so: containers/rv9/CMakeFiles/reader_rv9.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../../../lib/reader_rv9.so"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/rv9 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reader_rv9.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
containers/rv9/CMakeFiles/reader_rv9.dir/build: ../../lib/reader_rv9.so
.PHONY : containers/rv9/CMakeFiles/reader_rv9.dir/build

containers/rv9/CMakeFiles/reader_rv9.dir/requires: containers/rv9/CMakeFiles/reader_rv9.dir/rv9_reader.c.o.requires
.PHONY : containers/rv9/CMakeFiles/reader_rv9.dir/requires

containers/rv9/CMakeFiles/reader_rv9.dir/clean:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/rv9 && $(CMAKE_COMMAND) -P CMakeFiles/reader_rv9.dir/cmake_clean.cmake
.PHONY : containers/rv9/CMakeFiles/reader_rv9.dir/clean

containers/rv9/CMakeFiles/reader_rv9.dir/depend:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/containers/rv9 /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/rv9 /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/containers/rv9/CMakeFiles/reader_rv9.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : containers/rv9/CMakeFiles/reader_rv9.dir/depend

