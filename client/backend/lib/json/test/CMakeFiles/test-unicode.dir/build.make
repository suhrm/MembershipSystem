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
include test/CMakeFiles/test-unicode.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test-unicode.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test-unicode.dir/flags.make

test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o: test/CMakeFiles/test-unicode.dir/flags.make
test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o: test/src/unit-unicode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suhrm/gateway/gatewayCPP/lib/json/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o"
	cd /home/suhrm/gateway/gatewayCPP/lib/json/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o -c /home/suhrm/gateway/gatewayCPP/lib/json/test/src/unit-unicode.cpp

test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.i"
	cd /home/suhrm/gateway/gatewayCPP/lib/json/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suhrm/gateway/gatewayCPP/lib/json/test/src/unit-unicode.cpp > CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.i

test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.s"
	cd /home/suhrm/gateway/gatewayCPP/lib/json/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suhrm/gateway/gatewayCPP/lib/json/test/src/unit-unicode.cpp -o CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.s

test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o.requires:

.PHONY : test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o.requires

test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o.provides: test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/test-unicode.dir/build.make test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o.provides.build
.PHONY : test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o.provides

test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o.provides.build: test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o


# Object files for target test-unicode
test__unicode_OBJECTS = \
"CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o"

# External object files for target test-unicode
test__unicode_EXTERNAL_OBJECTS = \
"/home/suhrm/gateway/gatewayCPP/lib/json/test/CMakeFiles/doctest_main.dir/src/unit.cpp.o"

test/test-unicode: test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o
test/test-unicode: test/CMakeFiles/doctest_main.dir/src/unit.cpp.o
test/test-unicode: test/CMakeFiles/test-unicode.dir/build.make
test/test-unicode: test/CMakeFiles/test-unicode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/suhrm/gateway/gatewayCPP/lib/json/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-unicode"
	cd /home/suhrm/gateway/gatewayCPP/lib/json/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-unicode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test-unicode.dir/build: test/test-unicode

.PHONY : test/CMakeFiles/test-unicode.dir/build

test/CMakeFiles/test-unicode.dir/requires: test/CMakeFiles/test-unicode.dir/src/unit-unicode.cpp.o.requires

.PHONY : test/CMakeFiles/test-unicode.dir/requires

test/CMakeFiles/test-unicode.dir/clean:
	cd /home/suhrm/gateway/gatewayCPP/lib/json/test && $(CMAKE_COMMAND) -P CMakeFiles/test-unicode.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test-unicode.dir/clean

test/CMakeFiles/test-unicode.dir/depend:
	cd /home/suhrm/gateway/gatewayCPP/lib/json && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/suhrm/gateway/gatewayCPP/lib/json /home/suhrm/gateway/gatewayCPP/lib/json/test /home/suhrm/gateway/gatewayCPP/lib/json /home/suhrm/gateway/gatewayCPP/lib/json/test /home/suhrm/gateway/gatewayCPP/lib/json/test/CMakeFiles/test-unicode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test-unicode.dir/depend

