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
include test/CMakeFiles/test-allocator.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test-allocator.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test-allocator.dir/flags.make

test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o: test/CMakeFiles/test-allocator.dir/flags.make
test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o: test/src/unit-allocator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suhrm/gateway/gatewayCPP/lib/json/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o"
	cd /home/suhrm/gateway/gatewayCPP/lib/json/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o -c /home/suhrm/gateway/gatewayCPP/lib/json/test/src/unit-allocator.cpp

test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.i"
	cd /home/suhrm/gateway/gatewayCPP/lib/json/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suhrm/gateway/gatewayCPP/lib/json/test/src/unit-allocator.cpp > CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.i

test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.s"
	cd /home/suhrm/gateway/gatewayCPP/lib/json/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suhrm/gateway/gatewayCPP/lib/json/test/src/unit-allocator.cpp -o CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.s

test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o.requires:

.PHONY : test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o.requires

test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o.provides: test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/test-allocator.dir/build.make test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o.provides.build
.PHONY : test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o.provides

test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o.provides.build: test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o


# Object files for target test-allocator
test__allocator_OBJECTS = \
"CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o"

# External object files for target test-allocator
test__allocator_EXTERNAL_OBJECTS = \
"/home/suhrm/gateway/gatewayCPP/lib/json/test/CMakeFiles/doctest_main.dir/src/unit.cpp.o"

test/test-allocator: test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o
test/test-allocator: test/CMakeFiles/doctest_main.dir/src/unit.cpp.o
test/test-allocator: test/CMakeFiles/test-allocator.dir/build.make
test/test-allocator: test/CMakeFiles/test-allocator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/suhrm/gateway/gatewayCPP/lib/json/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-allocator"
	cd /home/suhrm/gateway/gatewayCPP/lib/json/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-allocator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test-allocator.dir/build: test/test-allocator

.PHONY : test/CMakeFiles/test-allocator.dir/build

test/CMakeFiles/test-allocator.dir/requires: test/CMakeFiles/test-allocator.dir/src/unit-allocator.cpp.o.requires

.PHONY : test/CMakeFiles/test-allocator.dir/requires

test/CMakeFiles/test-allocator.dir/clean:
	cd /home/suhrm/gateway/gatewayCPP/lib/json/test && $(CMAKE_COMMAND) -P CMakeFiles/test-allocator.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test-allocator.dir/clean

test/CMakeFiles/test-allocator.dir/depend:
	cd /home/suhrm/gateway/gatewayCPP/lib/json && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/suhrm/gateway/gatewayCPP/lib/json /home/suhrm/gateway/gatewayCPP/lib/json/test /home/suhrm/gateway/gatewayCPP/lib/json /home/suhrm/gateway/gatewayCPP/lib/json/test /home/suhrm/gateway/gatewayCPP/lib/json/test/CMakeFiles/test-allocator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test-allocator.dir/depend
