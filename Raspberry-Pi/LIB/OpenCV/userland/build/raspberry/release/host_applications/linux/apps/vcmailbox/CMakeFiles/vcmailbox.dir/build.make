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
include host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/depend.make

# Include the progress variables for this target.
include host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/progress.make

# Include the compile flags for this target's objects.
include host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/flags.make

host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.o: host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/flags.make
host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.o: ../../../host_applications/linux/apps/vcmailbox/vcmailbox.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.o"
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/host_applications/linux/apps/vcmailbox && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vcmailbox.dir/vcmailbox.c.o   -c /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/host_applications/linux/apps/vcmailbox/vcmailbox.c

host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vcmailbox.dir/vcmailbox.c.i"
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/host_applications/linux/apps/vcmailbox && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/host_applications/linux/apps/vcmailbox/vcmailbox.c > CMakeFiles/vcmailbox.dir/vcmailbox.c.i

host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vcmailbox.dir/vcmailbox.c.s"
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/host_applications/linux/apps/vcmailbox && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/host_applications/linux/apps/vcmailbox/vcmailbox.c -o CMakeFiles/vcmailbox.dir/vcmailbox.c.s

host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.o.requires:
.PHONY : host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.o.requires

host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.o.provides: host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.o.requires
	$(MAKE) -f host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/build.make host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.o.provides.build
.PHONY : host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.o.provides

host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.o.provides.build: host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.o

# Object files for target vcmailbox
vcmailbox_OBJECTS = \
"CMakeFiles/vcmailbox.dir/vcmailbox.c.o"

# External object files for target vcmailbox
vcmailbox_EXTERNAL_OBJECTS =

../../bin/vcmailbox: host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.o
../../bin/vcmailbox: host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/build.make
../../bin/vcmailbox: ../../lib/libvchostif.a
../../bin/vcmailbox: ../../lib/libvchiq_arm.so
../../bin/vcmailbox: ../../lib/libvcos.so
../../bin/vcmailbox: ../../lib/libvcfiled_check.a
../../bin/vcmailbox: host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../../../../../bin/vcmailbox"
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/host_applications/linux/apps/vcmailbox && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vcmailbox.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/build: ../../bin/vcmailbox
.PHONY : host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/build

host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/requires: host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/vcmailbox.c.o.requires
.PHONY : host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/requires

host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/clean:
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/host_applications/linux/apps/vcmailbox && $(CMAKE_COMMAND) -P CMakeFiles/vcmailbox.dir/cmake_clean.cmake
.PHONY : host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/clean

host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/depend:
	cd /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/host_applications/linux/apps/vcmailbox /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/host_applications/linux/apps/vcmailbox /home/pi/RCR/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : host_applications/linux/apps/vcmailbox/CMakeFiles/vcmailbox.dir/depend

