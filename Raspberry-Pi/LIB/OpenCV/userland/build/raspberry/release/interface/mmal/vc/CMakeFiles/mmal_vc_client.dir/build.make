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
include interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/depend.make

# Include the progress variables for this target.
include interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/progress.make

# Include the compile flags for this target's objects.
include interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/flags.make

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/flags.make
interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o: ../../../interface/mmal/vc/mmal_vc_client.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_client.c

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_client.c > CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.i

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_client.c -o CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.s

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o.requires:
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o.requires

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o.provides: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o.requires
	$(MAKE) -f interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/build.make interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o.provides.build
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o.provides

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o.provides.build: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/flags.make
interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o: ../../../interface/mmal/vc/mmal_vc_shm.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_shm.c

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_shm.c > CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.i

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_shm.c -o CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.s

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o.requires:
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o.requires

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o.provides: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o.requires
	$(MAKE) -f interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/build.make interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o.provides.build
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o.provides

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o.provides.build: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/flags.make
interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o: ../../../interface/mmal/vc/mmal_vc_api.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_api.c

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_api.c > CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.i

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_api.c -o CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.s

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o.requires:
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o.requires

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o.provides: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o.requires
	$(MAKE) -f interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/build.make interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o.provides.build
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o.provides

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o.provides.build: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/flags.make
interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o: ../../../interface/mmal/vc/mmal_vc_opaque_alloc.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_opaque_alloc.c

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_opaque_alloc.c > CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.i

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_opaque_alloc.c -o CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.s

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o.requires:
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o.requires

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o.provides: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o.requires
	$(MAKE) -f interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/build.make interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o.provides.build
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o.provides

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o.provides.build: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/flags.make
interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o: ../../../interface/mmal/vc/mmal_vc_msgnames.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_msgnames.c

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_msgnames.c > CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.i

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_msgnames.c -o CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.s

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o.requires:
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o.requires

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o.provides: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o.requires
	$(MAKE) -f interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/build.make interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o.provides.build
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o.provides

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o.provides.build: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/flags.make
interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o: ../../../interface/mmal/vc/mmal_vc_api_drm.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_api_drm.c

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_api_drm.c > CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.i

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc/mmal_vc_api_drm.c -o CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.s

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o.requires:
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o.requires

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o.provides: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o.requires
	$(MAKE) -f interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/build.make interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o.provides.build
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o.provides

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o.provides.build: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o

# Object files for target mmal_vc_client
mmal_vc_client_OBJECTS = \
"CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o" \
"CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o" \
"CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o" \
"CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o" \
"CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o" \
"CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o"

# External object files for target mmal_vc_client
mmal_vc_client_EXTERNAL_OBJECTS =

../../lib/libmmal_vc_client.so: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o
../../lib/libmmal_vc_client.so: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o
../../lib/libmmal_vc_client.so: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o
../../lib/libmmal_vc_client.so: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o
../../lib/libmmal_vc_client.so: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o
../../lib/libmmal_vc_client.so: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o
../../lib/libmmal_vc_client.so: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/build.make
../../lib/libmmal_vc_client.so: ../../lib/libvchiq_arm.so
../../lib/libmmal_vc_client.so: ../../lib/libvcos.so
../../lib/libmmal_vc_client.so: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../../../../lib/libmmal_vc_client.so"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mmal_vc_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/build: ../../lib/libmmal_vc_client.so
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/build

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/requires: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_client.c.o.requires
interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/requires: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_shm.c.o.requires
interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/requires: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api.c.o.requires
interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/requires: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_opaque_alloc.c.o.requires
interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/requires: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_msgnames.c.o.requires
interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/requires: interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/mmal_vc_api_drm.c.o.requires
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/requires

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/clean:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc && $(CMAKE_COMMAND) -P CMakeFiles/mmal_vc_client.dir/cmake_clean.cmake
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/clean

interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/depend:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/vc /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/depend

