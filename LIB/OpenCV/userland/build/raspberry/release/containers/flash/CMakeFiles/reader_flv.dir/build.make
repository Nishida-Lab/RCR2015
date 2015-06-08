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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/RCR/LIB/OpenCV/userland

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release

# Include any dependencies generated for this target.
include containers/flash/CMakeFiles/reader_flv.dir/depend.make

# Include the progress variables for this target.
include containers/flash/CMakeFiles/reader_flv.dir/progress.make

# Include the compile flags for this target's objects.
include containers/flash/CMakeFiles/reader_flv.dir/flags.make

containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.o: containers/flash/CMakeFiles/reader_flv.dir/flags.make
containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.o: ../../../containers/flash/flv_reader.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.o"
	cd /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/containers/flash && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/reader_flv.dir/flv_reader.c.o   -c /home/pi/RCR/LIB/OpenCV/userland/containers/flash/flv_reader.c

containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/reader_flv.dir/flv_reader.c.i"
	cd /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/containers/flash && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR/LIB/OpenCV/userland/containers/flash/flv_reader.c > CMakeFiles/reader_flv.dir/flv_reader.c.i

containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/reader_flv.dir/flv_reader.c.s"
	cd /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/containers/flash && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR/LIB/OpenCV/userland/containers/flash/flv_reader.c -o CMakeFiles/reader_flv.dir/flv_reader.c.s

containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.o.requires:
.PHONY : containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.o.requires

containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.o.provides: containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.o.requires
	$(MAKE) -f containers/flash/CMakeFiles/reader_flv.dir/build.make containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.o.provides.build
.PHONY : containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.o.provides

containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.o.provides.build: containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.o

# Object files for target reader_flv
reader_flv_OBJECTS = \
"CMakeFiles/reader_flv.dir/flv_reader.c.o"

# External object files for target reader_flv
reader_flv_EXTERNAL_OBJECTS =

../../lib/reader_flv.so: containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.o
../../lib/reader_flv.so: containers/flash/CMakeFiles/reader_flv.dir/build.make
../../lib/reader_flv.so: ../../lib/libcontainers.so
../../lib/reader_flv.so: ../../lib/libvcos.so
../../lib/reader_flv.so: containers/flash/CMakeFiles/reader_flv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../../../lib/reader_flv.so"
	cd /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/containers/flash && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reader_flv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
containers/flash/CMakeFiles/reader_flv.dir/build: ../../lib/reader_flv.so
.PHONY : containers/flash/CMakeFiles/reader_flv.dir/build

containers/flash/CMakeFiles/reader_flv.dir/requires: containers/flash/CMakeFiles/reader_flv.dir/flv_reader.c.o.requires
.PHONY : containers/flash/CMakeFiles/reader_flv.dir/requires

containers/flash/CMakeFiles/reader_flv.dir/clean:
	cd /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/containers/flash && $(CMAKE_COMMAND) -P CMakeFiles/reader_flv.dir/cmake_clean.cmake
.PHONY : containers/flash/CMakeFiles/reader_flv.dir/clean

containers/flash/CMakeFiles/reader_flv.dir/depend:
	cd /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/RCR/LIB/OpenCV/userland /home/pi/RCR/LIB/OpenCV/userland/containers/flash /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/containers/flash /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/containers/flash/CMakeFiles/reader_flv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : containers/flash/CMakeFiles/reader_flv.dir/depend

