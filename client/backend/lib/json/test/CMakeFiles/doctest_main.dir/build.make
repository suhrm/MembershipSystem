# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/suhrm/gateway/gatewayCPP/lib/json

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/suhrm/gateway/gatewayCPP/lib/json

# Include any dependencies generated for this target.
include test/CMakeFiles/doctest_main.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/doctest_main.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/doctest_main.dir/flags.make

test/CMakeFiles/doctest_main.dir/src/unit.cpp.o: test/CMakeFiles/doctest_main.dir/flags.make
test/CMakeFiles/doctest_main.dir/src/unit.cpp.o: test/src/unit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suhrm/gateway/gatewayCPP/lib/json/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/doctest_main.dir/src/unit.cpp.o"
	cd /home/suhrm/gateway/gatewayCPP/lib/json/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/doctest_main.dir/src/unit.cpp.o -c /home/suhrm/gateway/gatewayCPP/lib/json/test/src/unit.cpp

test/CMakeFiles/doctest_main.dir/src/unit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/doctest_main.dir/src/unit.cpp.i"
	cd /home/suhrm/gateway/gatewayCPP/lib/json/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suhrm/gateway/gatewayCPP/lib/json/test/src/unit.cpp > CMakeFiles/doctest_main.dir/src/unit.cpp.i

test/CMakeFiles/doctest_main.dir/src/unit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/doctest_main.dir/src/unit.cpp.s"
	cd /home/suhrm/gateway/gatewayCPP/lib/json/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suhrm/gateway/gatewayCPP/lib/json/test/src/unit.cpp -o CMakeFiles/doctest_main.dir/src/unit.cpp.s

test/CMakeFiles/doctest_main.dir/src/unit.cpp.o.requires:

.PHONY : test/CMakeFiles/doctest_main.dir/src/unit.cpp.o.requires

test/CMakeFiles/doctest_main.dir/src/unit.cpp.o.provides: test/CMakeFiles/doctest_main.dir/src/unit.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/doctest_main.dir/build.make test/CMakeFiles/doctest_main.dir/src/unit.cpp.o.provides.build
.PHONY : test/CMakeFiles/doctest_main.dir/src/unit.cpp.o.provides

test/CMakeFiles/doctest_main.dir/src/unit.cpp.o.provides.build: test/CMakeFiles/doctest_main.dir/src/unit.cpp.o


doctest_main: test/CMakeFiles/doctest_main.dir/src/unit.cpp.o
doctest_main: test/CMakeFiles/doctest_main.dir/build.make

.PHONY : doctest_main

# Rule to build all files generated by this target.
test/CMakeFiles/doctest_main.dir/build: doctest_main

.PHONY : test/CMakeFiles/doctest_main.dir/build

test/CMakeFiles/doctest_main.dir/requires: test/CMakeFiles/doctest_main.dir/src/unit.cpp.o.requires

.PHONY : test/CMakeFiles/doctest_main.dir/requires

test/CMakeFiles/doctest_main.dir/clean:
	cd /home/suhrm/gateway/gatewayCPP/lib/json/test && $(CMAKE_COMMAND) -P CMakeFiles/doctest_main.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/doctest_main.dir/clean

test/CMakeFiles/doctest_main.dir/depend:
	cd /home/suhrm/gateway/gatewayCPP/lib/json && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/suhrm/gateway/gatewayCPP/lib/json /home/suhrm/gateway/gatewayCPP/lib/json/test /home/suhrm/gateway/gatewayCPP/lib/json /home/suhrm/gateway/gatewayCPP/lib/json/test /home/suhrm/gateway/gatewayCPP/lib/json/test/CMakeFiles/doctest_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/doctest_main.dir/depend

