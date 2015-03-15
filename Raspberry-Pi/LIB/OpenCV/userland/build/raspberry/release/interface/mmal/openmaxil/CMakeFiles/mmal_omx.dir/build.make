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
include interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/depend.make

# Include the progress variables for this target.
include interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/progress.make

# Include the compile flags for this target's objects.
include interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/flags.make

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.o: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/flags.make
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.o: ../../../interface/mmal/openmaxil/mmalomx_core.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmal_omx.dir/mmalomx_core.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_core.c

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmal_omx.dir/mmalomx_core.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_core.c > CMakeFiles/mmal_omx.dir/mmalomx_core.c.i

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmal_omx.dir/mmalomx_core.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_core.c -o CMakeFiles/mmal_omx.dir/mmalomx_core.c.s

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.o.requires:
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.o.requires

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.o.provides: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.o.requires
	$(MAKE) -f interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/build.make interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.o.provides.build
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.o.provides

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.o.provides.build: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.o

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/flags.make
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o: ../../../interface/mmal/openmaxil/mmalomx_logging.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_logging.c

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmal_omx.dir/mmalomx_logging.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_logging.c > CMakeFiles/mmal_omx.dir/mmalomx_logging.c.i

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmal_omx.dir/mmalomx_logging.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_logging.c -o CMakeFiles/mmal_omx.dir/mmalomx_logging.c.s

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o.requires:
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o.requires

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o.provides: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o.requires
	$(MAKE) -f interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/build.make interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o.provides.build
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o.provides

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o.provides.build: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/flags.make
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o: ../../../interface/mmal/openmaxil/mmalomx_commands.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_commands.c

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmal_omx.dir/mmalomx_commands.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_commands.c > CMakeFiles/mmal_omx.dir/mmalomx_commands.c.i

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmal_omx.dir/mmalomx_commands.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_commands.c -o CMakeFiles/mmal_omx.dir/mmalomx_commands.c.s

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o.requires:
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o.requires

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o.provides: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o.requires
	$(MAKE) -f interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/build.make interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o.provides.build
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o.provides

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o.provides.build: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/flags.make
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o: ../../../interface/mmal/openmaxil/mmalomx_buffer.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_buffer.c

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_buffer.c > CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.i

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_buffer.c -o CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.s

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o.requires:
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o.requires

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o.provides: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o.requires
	$(MAKE) -f interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/build.make interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o.provides.build
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o.provides

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o.provides.build: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/flags.make
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o: ../../../interface/mmal/openmaxil/mmalomx_marks.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_marks.c

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmal_omx.dir/mmalomx_marks.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_marks.c > CMakeFiles/mmal_omx.dir/mmalomx_marks.c.i

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmal_omx.dir/mmalomx_marks.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_marks.c -o CMakeFiles/mmal_omx.dir/mmalomx_marks.c.s

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o.requires:
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o.requires

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o.provides: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o.requires
	$(MAKE) -f interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/build.make interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o.provides.build
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o.provides

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o.provides.build: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/flags.make
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o: ../../../interface/mmal/openmaxil/mmalomx_roles.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_roles.c

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmal_omx.dir/mmalomx_roles.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_roles.c > CMakeFiles/mmal_omx.dir/mmalomx_roles.c.i

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmal_omx.dir/mmalomx_roles.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_roles.c -o CMakeFiles/mmal_omx.dir/mmalomx_roles.c.s

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o.requires:
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o.requires

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o.provides: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o.requires
	$(MAKE) -f interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/build.make interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o.provides.build
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o.provides

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o.provides.build: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/flags.make
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o: ../../../interface/mmal/openmaxil/mmalomx_parameters.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_parameters.c

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_parameters.c > CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.i

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_parameters.c -o CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.s

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o.requires:
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o.requires

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o.provides: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o.requires
	$(MAKE) -f interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/build.make interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o.provides.build
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o.provides

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o.provides.build: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/flags.make
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o: ../../../interface/mmal/openmaxil/mmalomx_registry.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_registry.c

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmal_omx.dir/mmalomx_registry.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_registry.c > CMakeFiles/mmal_omx.dir/mmalomx_registry.c.i

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmal_omx.dir/mmalomx_registry.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil/mmalomx_registry.c -o CMakeFiles/mmal_omx.dir/mmalomx_registry.c.s

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o.requires:
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o.requires

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o.provides: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o.requires
	$(MAKE) -f interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/build.make interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o.provides.build
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o.provides

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o.provides.build: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o

# Object files for target mmal_omx
mmal_omx_OBJECTS = \
"CMakeFiles/mmal_omx.dir/mmalomx_core.c.o" \
"CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o" \
"CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o" \
"CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o" \
"CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o" \
"CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o" \
"CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o" \
"CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o"

# External object files for target mmal_omx
mmal_omx_EXTERNAL_OBJECTS =

../../lib/libmmal_omx.so: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.o
../../lib/libmmal_omx.so: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o
../../lib/libmmal_omx.so: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o
../../lib/libmmal_omx.so: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o
../../lib/libmmal_omx.so: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o
../../lib/libmmal_omx.so: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o
../../lib/libmmal_omx.so: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o
../../lib/libmmal_omx.so: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o
../../lib/libmmal_omx.so: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/build.make
../../lib/libmmal_omx.so: ../../lib/libmmal_omxutil.so
../../lib/libmmal_omx.so: ../../lib/libmmal_core.so
../../lib/libmmal_omx.so: ../../lib/libmmal_util.so
../../lib/libmmal_omx.so: ../../lib/libvcos.so
../../lib/libmmal_omx.so: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../../../../lib/libmmal_omx.so"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mmal_omx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/build: ../../lib/libmmal_omx.so
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/build

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/requires: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_core.c.o.requires
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/requires: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_logging.c.o.requires
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/requires: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_commands.c.o.requires
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/requires: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_buffer.c.o.requires
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/requires: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_marks.c.o.requires
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/requires: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_roles.c.o.requires
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/requires: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_parameters.c.o.requires
interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/requires: interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/mmalomx_registry.c.o.requires
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/requires

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/clean:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil && $(CMAKE_COMMAND) -P CMakeFiles/mmal_omx.dir/cmake_clean.cmake
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/clean

interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/depend:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/mmal/openmaxil /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : interface/mmal/openmaxil/CMakeFiles/mmal_omx.dir/depend
