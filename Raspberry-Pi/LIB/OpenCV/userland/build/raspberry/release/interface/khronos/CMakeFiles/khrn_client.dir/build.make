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
include interface/khronos/CMakeFiles/khrn_client.dir/depend.make

# Include the progress variables for this target.
include interface/khronos/CMakeFiles/khrn_client.dir/progress.make

# Include the compile flags for this target's objects.
include interface/khronos/CMakeFiles/khrn_client.dir/flags.make

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o: interface/khronos/CMakeFiles/khrn_client.dir/flags.make
interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o: ../../../interface/khronos/common/khrn_client_pointermap.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/khronos/common/khrn_client_pointermap.c

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/khronos/common/khrn_client_pointermap.c > CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.i

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/khronos/common/khrn_client_pointermap.c -o CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.s

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o.requires:
.PHONY : interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o.requires

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o.provides: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o.requires
	$(MAKE) -f interface/khronos/CMakeFiles/khrn_client.dir/build.make interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o.provides.build
.PHONY : interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o.provides

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o.provides.build: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o: interface/khronos/CMakeFiles/khrn_client.dir/flags.make
interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o: ../../../interface/khronos/common/khrn_client_vector.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/khronos/common/khrn_client_vector.c

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/khronos/common/khrn_client_vector.c > CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.i

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/khronos/common/khrn_client_vector.c -o CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.s

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o.requires:
.PHONY : interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o.requires

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o.provides: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o.requires
	$(MAKE) -f interface/khronos/CMakeFiles/khrn_client.dir/build.make interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o.provides.build
.PHONY : interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o.provides

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o.provides.build: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o: interface/khronos/CMakeFiles/khrn_client.dir/flags.make
interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o: ../../../interface/khronos/common/khrn_int_hash.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/khronos/common/khrn_int_hash.c

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/khronos/common/khrn_int_hash.c > CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.i

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/khronos/common/khrn_int_hash.c -o CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.s

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o.requires:
.PHONY : interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o.requires

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o.provides: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o.requires
	$(MAKE) -f interface/khronos/CMakeFiles/khrn_client.dir/build.make interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o.provides.build
.PHONY : interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o.provides

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o.provides.build: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o: interface/khronos/CMakeFiles/khrn_client.dir/flags.make
interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o: ../../../interface/khronos/common/khrn_int_hash_asm.s
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building ASM object interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && /usr/bin/gcc  $(ASM_DEFINES) $(ASM_FLAGS) -o CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/khronos/common/khrn_int_hash_asm.s

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o.requires:
.PHONY : interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o.requires

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o.provides: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o.requires
	$(MAKE) -f interface/khronos/CMakeFiles/khrn_client.dir/build.make interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o.provides.build
.PHONY : interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o.provides

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o.provides.build: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o: interface/khronos/CMakeFiles/khrn_client.dir/flags.make
interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o: ../../../interface/khronos/common/khrn_client_cache.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o   -c /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/khronos/common/khrn_client_cache.c

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.i"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/khronos/common/khrn_client_cache.c > CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.i

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.s"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/khronos/common/khrn_client_cache.c -o CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.s

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o.requires:
.PHONY : interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o.requires

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o.provides: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o.requires
	$(MAKE) -f interface/khronos/CMakeFiles/khrn_client.dir/build.make interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o.provides.build
.PHONY : interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o.provides

interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o.provides.build: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o

# Object files for target khrn_client
khrn_client_OBJECTS = \
"CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o" \
"CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o" \
"CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o" \
"CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o" \
"CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o"

# External object files for target khrn_client
khrn_client_EXTERNAL_OBJECTS =

../../lib/libkhrn_client.a: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o
../../lib/libkhrn_client.a: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o
../../lib/libkhrn_client.a: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o
../../lib/libkhrn_client.a: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o
../../lib/libkhrn_client.a: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o
../../lib/libkhrn_client.a: interface/khronos/CMakeFiles/khrn_client.dir/build.make
../../lib/libkhrn_client.a: interface/khronos/CMakeFiles/khrn_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library ../../../../lib/libkhrn_client.a"
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && $(CMAKE_COMMAND) -P CMakeFiles/khrn_client.dir/cmake_clean_target.cmake
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/khrn_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
interface/khronos/CMakeFiles/khrn_client.dir/build: ../../lib/libkhrn_client.a
.PHONY : interface/khronos/CMakeFiles/khrn_client.dir/build

interface/khronos/CMakeFiles/khrn_client.dir/requires: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o.requires
interface/khronos/CMakeFiles/khrn_client.dir/requires: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o.requires
interface/khronos/CMakeFiles/khrn_client.dir/requires: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o.requires
interface/khronos/CMakeFiles/khrn_client.dir/requires: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o.requires
interface/khronos/CMakeFiles/khrn_client.dir/requires: interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o.requires
.PHONY : interface/khronos/CMakeFiles/khrn_client.dir/requires

interface/khronos/CMakeFiles/khrn_client.dir/clean:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos && $(CMAKE_COMMAND) -P CMakeFiles/khrn_client.dir/cmake_clean.cmake
.PHONY : interface/khronos/CMakeFiles/khrn_client.dir/clean

interface/khronos/CMakeFiles/khrn_client.dir/depend:
	cd /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/interface/khronos /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos /home/pi/RCR2015/Raspberry-Pi/LIB/OpenCV/userland/build/raspberry/release/interface/khronos/CMakeFiles/khrn_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : interface/khronos/CMakeFiles/khrn_client.dir/depend

