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
include containers/mpga/CMakeFiles/reader_mpga.dir/depend.make

# Include the progress variables for this target.
include containers/mpga/CMakeFiles/reader_mpga.dir/progress.make

# Include the compile flags for this target's objects.
include containers/mpga/CMakeFiles/reader_mpga.dir/flags.make

containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.o: containers/mpga/CMakeFiles/reader_mpga.dir/flags.make
containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.o: ../../../containers/mpga/mpga_reader.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.o"
	cd /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/containers/mpga && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/reader_mpga.dir/mpga_reader.c.o   -c /home/pi/RCR/LIB/OpenCV/userland/containers/mpga/mpga_reader.c

containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/reader_mpga.dir/mpga_reader.c.i"
	cd /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/containers/mpga && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR/LIB/OpenCV/userland/containers/mpga/mpga_reader.c > CMakeFiles/reader_mpga.dir/mpga_reader.c.i

containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/reader_mpga.dir/mpga_reader.c.s"
	cd /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/containers/mpga && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR/LIB/OpenCV/userland/containers/mpga/mpga_reader.c -o CMakeFiles/reader_mpga.dir/mpga_reader.c.s

containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.o.requires:
.PHONY : containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.o.requires

containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.o.provides: containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.o.requires
	$(MAKE) -f containers/mpga/CMakeFiles/reader_mpga.dir/build.make containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.o.provides.build
.PHONY : containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.o.provides

containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.o.provides.build: containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.o

# Object files for target reader_mpga
reader_mpga_OBJECTS = \
"CMakeFiles/reader_mpga.dir/mpga_reader.c.o"

# External object files for target reader_mpga
reader_mpga_EXTERNAL_OBJECTS =

../../lib/reader_mpga.so: containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.o
../../lib/reader_mpga.so: containers/mpga/CMakeFiles/reader_mpga.dir/build.make
../../lib/reader_mpga.so: ../../lib/libcontainers.so
../../lib/reader_mpga.so: ../../lib/libvcos.so
../../lib/reader_mpga.so: containers/mpga/CMakeFiles/reader_mpga.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../../../lib/reader_mpga.so"
	cd /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/containers/mpga && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reader_mpga.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
containers/mpga/CMakeFiles/reader_mpga.dir/build: ../../lib/reader_mpga.so
.PHONY : containers/mpga/CMakeFiles/reader_mpga.dir/build

containers/mpga/CMakeFiles/reader_mpga.dir/requires: containers/mpga/CMakeFiles/reader_mpga.dir/mpga_reader.c.o.requires
.PHONY : containers/mpga/CMakeFiles/reader_mpga.dir/requires

containers/mpga/CMakeFiles/reader_mpga.dir/clean:
	cd /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/containers/mpga && $(CMAKE_COMMAND) -P CMakeFiles/reader_mpga.dir/cmake_clean.cmake
.PHONY : containers/mpga/CMakeFiles/reader_mpga.dir/clean

containers/mpga/CMakeFiles/reader_mpga.dir/depend:
	cd /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/RCR/LIB/OpenCV/userland /home/pi/RCR/LIB/OpenCV/userland/containers/mpga /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/containers/mpga /home/pi/RCR/LIB/OpenCV/userland/build/raspberry/release/containers/mpga/CMakeFiles/reader_mpga.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : containers/mpga/CMakeFiles/reader_mpga.dir/depend

