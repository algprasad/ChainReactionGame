# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/alg/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.6817.32/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/alg/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.6817.32/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alg/CLionProjects/ChainReactionGame

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alg/CLionProjects/ChainReactionGame/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/shapes.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/shapes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/shapes.dir/flags.make

CMakeFiles/shapes.dir/shapes.cpp.o: CMakeFiles/shapes.dir/flags.make
CMakeFiles/shapes.dir/shapes.cpp.o: ../shapes.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alg/CLionProjects/ChainReactionGame/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/shapes.dir/shapes.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/shapes.dir/shapes.cpp.o -c /home/alg/CLionProjects/ChainReactionGame/shapes.cpp

CMakeFiles/shapes.dir/shapes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shapes.dir/shapes.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alg/CLionProjects/ChainReactionGame/shapes.cpp > CMakeFiles/shapes.dir/shapes.cpp.i

CMakeFiles/shapes.dir/shapes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shapes.dir/shapes.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alg/CLionProjects/ChainReactionGame/shapes.cpp -o CMakeFiles/shapes.dir/shapes.cpp.s

CMakeFiles/shapes.dir/Box.cpp.o: CMakeFiles/shapes.dir/flags.make
CMakeFiles/shapes.dir/Box.cpp.o: ../Box.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alg/CLionProjects/ChainReactionGame/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/shapes.dir/Box.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/shapes.dir/Box.cpp.o -c /home/alg/CLionProjects/ChainReactionGame/Box.cpp

CMakeFiles/shapes.dir/Box.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shapes.dir/Box.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alg/CLionProjects/ChainReactionGame/Box.cpp > CMakeFiles/shapes.dir/Box.cpp.i

CMakeFiles/shapes.dir/Box.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shapes.dir/Box.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alg/CLionProjects/ChainReactionGame/Box.cpp -o CMakeFiles/shapes.dir/Box.cpp.s

# Object files for target shapes
shapes_OBJECTS = \
"CMakeFiles/shapes.dir/shapes.cpp.o" \
"CMakeFiles/shapes.dir/Box.cpp.o"

# External object files for target shapes
shapes_EXTERNAL_OBJECTS =

shapes: CMakeFiles/shapes.dir/shapes.cpp.o
shapes: CMakeFiles/shapes.dir/Box.cpp.o
shapes: CMakeFiles/shapes.dir/build.make
shapes: /home/alg/Documents/SFML-2.5.1/lib/libsfml-graphics.so.2.5.1
shapes: /home/alg/Documents/SFML-2.5.1/lib/libsfml-audio.so.2.5.1
shapes: /home/alg/Documents/SFML-2.5.1/lib/libsfml-window.so.2.5.1
shapes: /home/alg/Documents/SFML-2.5.1/lib/libsfml-system.so.2.5.1
shapes: CMakeFiles/shapes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alg/CLionProjects/ChainReactionGame/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable shapes"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shapes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/shapes.dir/build: shapes

.PHONY : CMakeFiles/shapes.dir/build

CMakeFiles/shapes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/shapes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/shapes.dir/clean

CMakeFiles/shapes.dir/depend:
	cd /home/alg/CLionProjects/ChainReactionGame/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alg/CLionProjects/ChainReactionGame /home/alg/CLionProjects/ChainReactionGame /home/alg/CLionProjects/ChainReactionGame/cmake-build-debug /home/alg/CLionProjects/ChainReactionGame/cmake-build-debug /home/alg/CLionProjects/ChainReactionGame/cmake-build-debug/CMakeFiles/shapes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/shapes.dir/depend

