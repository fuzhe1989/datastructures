# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fuzhe/projects/datastructures

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fuzhe/projects/datastructures/build

# Include any dependencies generated for this target.
include test/common/CMakeFiles/gtests_common.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/common/CMakeFiles/gtests_common.dir/compiler_depend.make

# Include the progress variables for this target.
include test/common/CMakeFiles/gtests_common.dir/progress.make

# Include the compile flags for this target's objects.
include test/common/CMakeFiles/gtests_common.dir/flags.make

test/common/CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.o: test/common/CMakeFiles/gtests_common.dir/flags.make
test/common/CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.o: ../test/common/gtest_spinlock.cpp
test/common/CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.o: test/common/CMakeFiles/gtests_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fuzhe/projects/datastructures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/common/CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.o"
	cd /home/fuzhe/projects/datastructures/build/test/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/common/CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.o -MF CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.o.d -o CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.o -c /home/fuzhe/projects/datastructures/test/common/gtest_spinlock.cpp

test/common/CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.i"
	cd /home/fuzhe/projects/datastructures/build/test/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fuzhe/projects/datastructures/test/common/gtest_spinlock.cpp > CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.i

test/common/CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.s"
	cd /home/fuzhe/projects/datastructures/build/test/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fuzhe/projects/datastructures/test/common/gtest_spinlock.cpp -o CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.s

# Object files for target gtests_common
gtests_common_OBJECTS = \
"CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.o"

# External object files for target gtests_common
gtests_common_EXTERNAL_OBJECTS =

test/common/gtests_common: test/common/CMakeFiles/gtests_common.dir/gtest_spinlock.cpp.o
test/common/gtests_common: test/common/CMakeFiles/gtests_common.dir/build.make
test/common/gtests_common: test/common/CMakeFiles/gtests_common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fuzhe/projects/datastructures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable gtests_common"
	cd /home/fuzhe/projects/datastructures/build/test/common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtests_common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/common/CMakeFiles/gtests_common.dir/build: test/common/gtests_common
.PHONY : test/common/CMakeFiles/gtests_common.dir/build

test/common/CMakeFiles/gtests_common.dir/clean:
	cd /home/fuzhe/projects/datastructures/build/test/common && $(CMAKE_COMMAND) -P CMakeFiles/gtests_common.dir/cmake_clean.cmake
.PHONY : test/common/CMakeFiles/gtests_common.dir/clean

test/common/CMakeFiles/gtests_common.dir/depend:
	cd /home/fuzhe/projects/datastructures/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fuzhe/projects/datastructures /home/fuzhe/projects/datastructures/test/common /home/fuzhe/projects/datastructures/build /home/fuzhe/projects/datastructures/build/test/common /home/fuzhe/projects/datastructures/build/test/common/CMakeFiles/gtests_common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/common/CMakeFiles/gtests_common.dir/depend

