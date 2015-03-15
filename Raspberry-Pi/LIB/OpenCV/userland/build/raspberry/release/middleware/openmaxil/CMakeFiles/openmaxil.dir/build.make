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
include middleware/openmaxil/CMakeFiles/openmaxil.dir/depend.make

# Include the progress variables for this target.
include middleware/openmaxil/CMakeFiles/openmaxil.dir/progress.make

# Include the compile flags for this target's objects.
include middleware/openmaxil/CMakeFiles/openmaxil.dir/flags.make

middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o: middleware/openmaxil/CMakeFiles/openmaxil.dir/flags.make
middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o: ../../../host_applications/framework/common/ilcore.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/middleware/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/host_applications/framework/common/ilcore.c

middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/middleware/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/host_applications/framework/common/ilcore.c > CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.i

middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/middleware/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/host_applications/framework/common/ilcore.c -o CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.s

middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o.requires:
.PHONY : middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o.requires

middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o.provides: middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o.requires
	$(MAKE) -f middleware/openmaxil/CMakeFiles/openmaxil.dir/build.make middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o.provides.build
.PHONY : middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o.provides

middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o.provides.build: middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o

# Object files for target openmaxil
openmaxil_OBJECTS = \
"CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o"

# External object files for target openmaxil
openmaxil_EXTERNAL_OBJECTS =

../../lib/libopenmaxil.so: middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o
../../lib/libopenmaxil.so: middleware/openmaxil/CMakeFiles/openmaxil.dir/build.make
../../lib/libopenmaxil.so: ../../lib/libvcilcs.a
../../lib/libopenmaxil.so: ../../lib/libvcos.so
../../lib/libopenmaxil.so: ../../lib/libGLESv2.so
../../lib/libopenmaxil.so: ../../lib/libEGL.so
../../lib/libopenmaxil.so: ../../lib/libbcm_host.so
../../lib/libopenmaxil.so: ../../lib/libvchostif.a
../../lib/libopenmaxil.so: ../../lib/libvcos.so
../../lib/libopenmaxil.so: ../../lib/libvcfiled_check.a
../../lib/libopenmaxil.so: ../../lib/libkhrn_client.a
../../lib/libopenmaxil.so: ../../lib/libvchiq_arm.so
../../lib/libopenmaxil.so: middleware/openmaxil/CMakeFiles/openmaxil.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../../../lib/libopenmaxil.so"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/middleware/openmaxil && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openmaxil.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
middleware/openmaxil/CMakeFiles/openmaxil.dir/build: ../../lib/libopenmaxil.so
.PHONY : middleware/openmaxil/CMakeFiles/openmaxil.dir/build

middleware/openmaxil/CMakeFiles/openmaxil.dir/requires: middleware/openmaxil/CMakeFiles/openmaxil.dir/__/__/host_applications/framework/common/ilcore.c.o.requires
.PHONY : middleware/openmaxil/CMakeFiles/openmaxil.dir/requires

middleware/openmaxil/CMakeFiles/openmaxil.dir/clean:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/middleware/openmaxil && $(CMAKE_COMMAND) -P CMakeFiles/openmaxil.dir/cmake_clean.cmake
.PHONY : middleware/openmaxil/CMakeFiles/openmaxil.dir/clean

middleware/openmaxil/CMakeFiles/openmaxil.dir/depend:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/middleware/openmaxil /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/middleware/openmaxil /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/middleware/openmaxil/CMakeFiles/openmaxil.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : middleware/openmaxil/CMakeFiles/openmaxil.dir/depend

