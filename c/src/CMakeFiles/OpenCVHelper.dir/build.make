# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/david/Documents/src/comp3750/project/master/c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/david/Documents/src/comp3750/project/master/c

# Include any dependencies generated for this target.
include src/CMakeFiles/OpenCVHelper.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/OpenCVHelper.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/OpenCVHelper.dir/flags.make

src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o: src/CMakeFiles/OpenCVHelper.dir/flags.make
src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o: src/OpenCVHelper.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/david/Documents/src/comp3750/project/master/c/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o"
	cd /home/david/Documents/src/comp3750/project/master/c/src && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o   -c /home/david/Documents/src/comp3750/project/master/c/src/OpenCVHelper.c

src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.i"
	cd /home/david/Documents/src/comp3750/project/master/c/src && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/david/Documents/src/comp3750/project/master/c/src/OpenCVHelper.c > CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.i

src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.s"
	cd /home/david/Documents/src/comp3750/project/master/c/src && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/david/Documents/src/comp3750/project/master/c/src/OpenCVHelper.c -o CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.s

src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o.requires:
.PHONY : src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o.requires

src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o.provides: src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o.requires
	$(MAKE) -f src/CMakeFiles/OpenCVHelper.dir/build.make src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o.provides.build
.PHONY : src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o.provides

src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o.provides.build: src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o
.PHONY : src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o.provides.build

# Object files for target OpenCVHelper
OpenCVHelper_OBJECTS = \
"CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o"

# External object files for target OpenCVHelper
OpenCVHelper_EXTERNAL_OBJECTS =

src/libOpenCVHelper.a: src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o
src/libOpenCVHelper.a: src/CMakeFiles/OpenCVHelper.dir/build.make
src/libOpenCVHelper.a: src/CMakeFiles/OpenCVHelper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libOpenCVHelper.a"
	cd /home/david/Documents/src/comp3750/project/master/c/src && $(CMAKE_COMMAND) -P CMakeFiles/OpenCVHelper.dir/cmake_clean_target.cmake
	cd /home/david/Documents/src/comp3750/project/master/c/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenCVHelper.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/OpenCVHelper.dir/build: src/libOpenCVHelper.a
.PHONY : src/CMakeFiles/OpenCVHelper.dir/build

src/CMakeFiles/OpenCVHelper.dir/requires: src/CMakeFiles/OpenCVHelper.dir/OpenCVHelper.c.o.requires
.PHONY : src/CMakeFiles/OpenCVHelper.dir/requires

src/CMakeFiles/OpenCVHelper.dir/clean:
	cd /home/david/Documents/src/comp3750/project/master/c/src && $(CMAKE_COMMAND) -P CMakeFiles/OpenCVHelper.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/OpenCVHelper.dir/clean

src/CMakeFiles/OpenCVHelper.dir/depend:
	cd /home/david/Documents/src/comp3750/project/master/c && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/david/Documents/src/comp3750/project/master/c /home/david/Documents/src/comp3750/project/master/c/src /home/david/Documents/src/comp3750/project/master/c /home/david/Documents/src/comp3750/project/master/c/src /home/david/Documents/src/comp3750/project/master/c/src/CMakeFiles/OpenCVHelper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/OpenCVHelper.dir/depend
