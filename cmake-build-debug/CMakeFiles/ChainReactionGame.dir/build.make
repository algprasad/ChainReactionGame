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
include CMakeFiles/ChainReactionGame.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ChainReactionGame.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ChainReactionGame.dir/flags.make

CMakeFiles/ChainReactionGame.dir/main.cpp.o: CMakeFiles/ChainReactionGame.dir/flags.make
CMakeFiles/ChainReactionGame.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alg/CLionProjects/ChainReactionGame/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ChainReactionGame.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChainReactionGame.dir/main.cpp.o -c /home/alg/CLionProjects/ChainReactionGame/main.cpp

CMakeFiles/ChainReactionGame.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChainReactionGame.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alg/CLionProjects/ChainReactionGame/main.cpp > CMakeFiles/ChainReactionGame.dir/main.cpp.i

CMakeFiles/ChainReactionGame.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChainReactionGame.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alg/CLionProjects/ChainReactionGame/main.cpp -o CMakeFiles/ChainReactionGame.dir/main.cpp.s

CMakeFiles/ChainReactionGame.dir/Box.cpp.o: CMakeFiles/ChainReactionGame.dir/flags.make
CMakeFiles/ChainReactionGame.dir/Box.cpp.o: ../Box.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alg/CLionProjects/ChainReactionGame/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ChainReactionGame.dir/Box.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChainReactionGame.dir/Box.cpp.o -c /home/alg/CLionProjects/ChainReactionGame/Box.cpp

CMakeFiles/ChainReactionGame.dir/Box.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChainReactionGame.dir/Box.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alg/CLionProjects/ChainReactionGame/Box.cpp > CMakeFiles/ChainReactionGame.dir/Box.cpp.i

CMakeFiles/ChainReactionGame.dir/Box.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChainReactionGame.dir/Box.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alg/CLionProjects/ChainReactionGame/Box.cpp -o CMakeFiles/ChainReactionGame.dir/Box.cpp.s

# Object files for target ChainReactionGame
ChainReactionGame_OBJECTS = \
"CMakeFiles/ChainReactionGame.dir/main.cpp.o" \
"CMakeFiles/ChainReactionGame.dir/Box.cpp.o"

# External object files for target ChainReactionGame
ChainReactionGame_EXTERNAL_OBJECTS =

ChainReactionGame: CMakeFiles/ChainReactionGame.dir/main.cpp.o
ChainReactionGame: CMakeFiles/ChainReactionGame.dir/Box.cpp.o
ChainReactionGame: CMakeFiles/ChainReactionGame.dir/build.make
ChainReactionGame: /home/alg/Documents/SFML-2.5.1/lib/libsfml-graphics.so.2.5.1
ChainReactionGame: /home/alg/Documents/SFML-2.5.1/lib/libsfml-audio.so.2.5.1
ChainReactionGame: /home/alg/Documents/SFML-2.5.1/lib/libsfml-window.so.2.5.1
ChainReactionGame: /home/alg/Documents/SFML-2.5.1/lib/libsfml-system.so.2.5.1
ChainReactionGame: CMakeFiles/ChainReactionGame.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alg/CLionProjects/ChainReactionGame/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ChainReactionGame"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ChainReactionGame.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ChainReactionGame.dir/build: ChainReactionGame

.PHONY : CMakeFiles/ChainReactionGame.dir/build

CMakeFiles/ChainReactionGame.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ChainReactionGame.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ChainReactionGame.dir/clean

CMakeFiles/ChainReactionGame.dir/depend:
	cd /home/alg/CLionProjects/ChainReactionGame/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alg/CLionProjects/ChainReactionGame /home/alg/CLionProjects/ChainReactionGame /home/alg/CLionProjects/ChainReactionGame/cmake-build-debug /home/alg/CLionProjects/ChainReactionGame/cmake-build-debug /home/alg/CLionProjects/ChainReactionGame/cmake-build-debug/CMakeFiles/ChainReactionGame.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ChainReactionGame.dir/depend

