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
CMAKE_COMMAND = /home/ben/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.6015.37/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/ben/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.6015.37/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ben/robots

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ben/robots/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/robots.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/robots.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/robots.dir/flags.make

CMakeFiles/robots.dir/main.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/robots.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/main.cpp.o -c /home/ben/robots/main.cpp

CMakeFiles/robots.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/main.cpp > CMakeFiles/robots.dir/main.cpp.i

CMakeFiles/robots.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/main.cpp -o CMakeFiles/robots.dir/main.cpp.s

CMakeFiles/robots.dir/graphics.c.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/graphics.c.o: ../graphics.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/robots.dir/graphics.c.o"
	/usr/bin/clang++ $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/robots.dir/graphics.c.o   -c /home/ben/robots/graphics.c

CMakeFiles/robots.dir/graphics.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/robots.dir/graphics.c.i"
	/usr/bin/clang++ $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ben/robots/graphics.c > CMakeFiles/robots.dir/graphics.c.i

CMakeFiles/robots.dir/graphics.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/robots.dir/graphics.c.s"
	/usr/bin/clang++ $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ben/robots/graphics.c -o CMakeFiles/robots.dir/graphics.c.s

CMakeFiles/robots.dir/direction.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/direction.cpp.o: ../direction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/robots.dir/direction.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/direction.cpp.o -c /home/ben/robots/direction.cpp

CMakeFiles/robots.dir/direction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/direction.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/direction.cpp > CMakeFiles/robots.dir/direction.cpp.i

CMakeFiles/robots.dir/direction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/direction.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/direction.cpp -o CMakeFiles/robots.dir/direction.cpp.s

CMakeFiles/robots.dir/loc.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/loc.cpp.o: ../loc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/robots.dir/loc.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/loc.cpp.o -c /home/ben/robots/loc.cpp

CMakeFiles/robots.dir/loc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/loc.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/loc.cpp > CMakeFiles/robots.dir/loc.cpp.i

CMakeFiles/robots.dir/loc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/loc.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/loc.cpp -o CMakeFiles/robots.dir/loc.cpp.s

CMakeFiles/robots.dir/util.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/util.cpp.o: ../util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/robots.dir/util.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/util.cpp.o -c /home/ben/robots/util.cpp

CMakeFiles/robots.dir/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/util.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/util.cpp > CMakeFiles/robots.dir/util.cpp.i

CMakeFiles/robots.dir/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/util.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/util.cpp -o CMakeFiles/robots.dir/util.cpp.s

CMakeFiles/robots.dir/anim.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/anim.cpp.o: ../anim.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/robots.dir/anim.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/anim.cpp.o -c /home/ben/robots/anim.cpp

CMakeFiles/robots.dir/anim.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/anim.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/anim.cpp > CMakeFiles/robots.dir/anim.cpp.i

CMakeFiles/robots.dir/anim.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/anim.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/anim.cpp -o CMakeFiles/robots.dir/anim.cpp.s

CMakeFiles/robots.dir/world.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/world.cpp.o: ../world.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/robots.dir/world.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/world.cpp.o -c /home/ben/robots/world.cpp

CMakeFiles/robots.dir/world.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/world.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/world.cpp > CMakeFiles/robots.dir/world.cpp.i

CMakeFiles/robots.dir/world.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/world.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/world.cpp -o CMakeFiles/robots.dir/world.cpp.s

CMakeFiles/robots.dir/perlin.c.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/perlin.c.o: ../perlin.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/robots.dir/perlin.c.o"
	/usr/bin/clang++ $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/robots.dir/perlin.c.o   -c /home/ben/robots/perlin.c

CMakeFiles/robots.dir/perlin.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/robots.dir/perlin.c.i"
	/usr/bin/clang++ $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ben/robots/perlin.c > CMakeFiles/robots.dir/perlin.c.i

CMakeFiles/robots.dir/perlin.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/robots.dir/perlin.c.s"
	/usr/bin/clang++ $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ben/robots/perlin.c -o CMakeFiles/robots.dir/perlin.c.s

CMakeFiles/robots.dir/bot.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/bot.cpp.o: ../bot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/robots.dir/bot.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/bot.cpp.o -c /home/ben/robots/bot.cpp

CMakeFiles/robots.dir/bot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/bot.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/bot.cpp > CMakeFiles/robots.dir/bot.cpp.i

CMakeFiles/robots.dir/bot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/bot.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/bot.cpp -o CMakeFiles/robots.dir/bot.cpp.s

CMakeFiles/robots.dir/resourceGraph.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/resourceGraph.cpp.o: ../resourceGraph.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/robots.dir/resourceGraph.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/resourceGraph.cpp.o -c /home/ben/robots/resourceGraph.cpp

CMakeFiles/robots.dir/resourceGraph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/resourceGraph.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/resourceGraph.cpp > CMakeFiles/robots.dir/resourceGraph.cpp.i

CMakeFiles/robots.dir/resourceGraph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/resourceGraph.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/resourceGraph.cpp -o CMakeFiles/robots.dir/resourceGraph.cpp.s

CMakeFiles/robots.dir/navigate.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/navigate.cpp.o: ../navigate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/robots.dir/navigate.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/navigate.cpp.o -c /home/ben/robots/navigate.cpp

CMakeFiles/robots.dir/navigate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/navigate.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/navigate.cpp > CMakeFiles/robots.dir/navigate.cpp.i

CMakeFiles/robots.dir/navigate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/navigate.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/navigate.cpp -o CMakeFiles/robots.dir/navigate.cpp.s

CMakeFiles/robots.dir/innerWorld.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/innerWorld.cpp.o: ../innerWorld.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/robots.dir/innerWorld.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/innerWorld.cpp.o -c /home/ben/robots/innerWorld.cpp

CMakeFiles/robots.dir/innerWorld.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/innerWorld.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/innerWorld.cpp > CMakeFiles/robots.dir/innerWorld.cpp.i

CMakeFiles/robots.dir/innerWorld.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/innerWorld.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/innerWorld.cpp -o CMakeFiles/robots.dir/innerWorld.cpp.s

CMakeFiles/robots.dir/block.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/block.cpp.o: ../block.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/robots.dir/block.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/block.cpp.o -c /home/ben/robots/block.cpp

CMakeFiles/robots.dir/block.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/block.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/block.cpp > CMakeFiles/robots.dir/block.cpp.i

CMakeFiles/robots.dir/block.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/block.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/block.cpp -o CMakeFiles/robots.dir/block.cpp.s

CMakeFiles/robots.dir/timer.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/timer.cpp.o: ../timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/robots.dir/timer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/timer.cpp.o -c /home/ben/robots/timer.cpp

CMakeFiles/robots.dir/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/timer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/timer.cpp > CMakeFiles/robots.dir/timer.cpp.i

CMakeFiles/robots.dir/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/timer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/timer.cpp -o CMakeFiles/robots.dir/timer.cpp.s

CMakeFiles/robots.dir/explore.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/explore.cpp.o: ../explore.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/robots.dir/explore.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/explore.cpp.o -c /home/ben/robots/explore.cpp

CMakeFiles/robots.dir/explore.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/explore.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/explore.cpp > CMakeFiles/robots.dir/explore.cpp.i

CMakeFiles/robots.dir/explore.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/explore.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/explore.cpp -o CMakeFiles/robots.dir/explore.cpp.s

CMakeFiles/robots.dir/path.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/path.cpp.o: ../path.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/robots.dir/path.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/path.cpp.o -c /home/ben/robots/path.cpp

CMakeFiles/robots.dir/path.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/path.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/path.cpp > CMakeFiles/robots.dir/path.cpp.i

CMakeFiles/robots.dir/path.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/path.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/path.cpp -o CMakeFiles/robots.dir/path.cpp.s

CMakeFiles/robots.dir/AppWindow.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/AppWindow.cpp.o: ../AppWindow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/robots.dir/AppWindow.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/AppWindow.cpp.o -c /home/ben/robots/AppWindow.cpp

CMakeFiles/robots.dir/AppWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/AppWindow.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/AppWindow.cpp > CMakeFiles/robots.dir/AppWindow.cpp.i

CMakeFiles/robots.dir/AppWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/AppWindow.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/AppWindow.cpp -o CMakeFiles/robots.dir/AppWindow.cpp.s

CMakeFiles/robots.dir/DynamicResource.cpp.o: CMakeFiles/robots.dir/flags.make
CMakeFiles/robots.dir/DynamicResource.cpp.o: ../DynamicResource.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/robots.dir/DynamicResource.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robots.dir/DynamicResource.cpp.o -c /home/ben/robots/DynamicResource.cpp

CMakeFiles/robots.dir/DynamicResource.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robots.dir/DynamicResource.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/robots/DynamicResource.cpp > CMakeFiles/robots.dir/DynamicResource.cpp.i

CMakeFiles/robots.dir/DynamicResource.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robots.dir/DynamicResource.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/robots/DynamicResource.cpp -o CMakeFiles/robots.dir/DynamicResource.cpp.s

# Object files for target robots
robots_OBJECTS = \
"CMakeFiles/robots.dir/main.cpp.o" \
"CMakeFiles/robots.dir/graphics.c.o" \
"CMakeFiles/robots.dir/direction.cpp.o" \
"CMakeFiles/robots.dir/loc.cpp.o" \
"CMakeFiles/robots.dir/util.cpp.o" \
"CMakeFiles/robots.dir/anim.cpp.o" \
"CMakeFiles/robots.dir/world.cpp.o" \
"CMakeFiles/robots.dir/perlin.c.o" \
"CMakeFiles/robots.dir/bot.cpp.o" \
"CMakeFiles/robots.dir/resourceGraph.cpp.o" \
"CMakeFiles/robots.dir/navigate.cpp.o" \
"CMakeFiles/robots.dir/innerWorld.cpp.o" \
"CMakeFiles/robots.dir/block.cpp.o" \
"CMakeFiles/robots.dir/timer.cpp.o" \
"CMakeFiles/robots.dir/explore.cpp.o" \
"CMakeFiles/robots.dir/path.cpp.o" \
"CMakeFiles/robots.dir/AppWindow.cpp.o" \
"CMakeFiles/robots.dir/DynamicResource.cpp.o"

# External object files for target robots
robots_EXTERNAL_OBJECTS =

robots: CMakeFiles/robots.dir/main.cpp.o
robots: CMakeFiles/robots.dir/graphics.c.o
robots: CMakeFiles/robots.dir/direction.cpp.o
robots: CMakeFiles/robots.dir/loc.cpp.o
robots: CMakeFiles/robots.dir/util.cpp.o
robots: CMakeFiles/robots.dir/anim.cpp.o
robots: CMakeFiles/robots.dir/world.cpp.o
robots: CMakeFiles/robots.dir/perlin.c.o
robots: CMakeFiles/robots.dir/bot.cpp.o
robots: CMakeFiles/robots.dir/resourceGraph.cpp.o
robots: CMakeFiles/robots.dir/navigate.cpp.o
robots: CMakeFiles/robots.dir/innerWorld.cpp.o
robots: CMakeFiles/robots.dir/block.cpp.o
robots: CMakeFiles/robots.dir/timer.cpp.o
robots: CMakeFiles/robots.dir/explore.cpp.o
robots: CMakeFiles/robots.dir/path.cpp.o
robots: CMakeFiles/robots.dir/AppWindow.cpp.o
robots: CMakeFiles/robots.dir/DynamicResource.cpp.o
robots: CMakeFiles/robots.dir/build.make
robots: CMakeFiles/robots.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ben/robots/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Linking CXX executable robots"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/robots.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/robots.dir/build: robots

.PHONY : CMakeFiles/robots.dir/build

CMakeFiles/robots.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/robots.dir/cmake_clean.cmake
.PHONY : CMakeFiles/robots.dir/clean

CMakeFiles/robots.dir/depend:
	cd /home/ben/robots/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/robots /home/ben/robots /home/ben/robots/cmake-build-debug /home/ben/robots/cmake-build-debug /home/ben/robots/cmake-build-debug/CMakeFiles/robots.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/robots.dir/depend

