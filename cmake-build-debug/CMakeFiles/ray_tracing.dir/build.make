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
CMAKE_COMMAND = "/Users/junjieliao/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.7142.39/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/junjieliao/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.7142.39/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/junjieliao/CLionProjects/ray_tracing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/junjieliao/CLionProjects/ray_tracing/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ray_tracing.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ray_tracing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ray_tracing.dir/flags.make

CMakeFiles/ray_tracing.dir/main.cpp.o: CMakeFiles/ray_tracing.dir/flags.make
CMakeFiles/ray_tracing.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junjieliao/CLionProjects/ray_tracing/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ray_tracing.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ray_tracing.dir/main.cpp.o -c /Users/junjieliao/CLionProjects/ray_tracing/main.cpp

CMakeFiles/ray_tracing.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ray_tracing.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/junjieliao/CLionProjects/ray_tracing/main.cpp > CMakeFiles/ray_tracing.dir/main.cpp.i

CMakeFiles/ray_tracing.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ray_tracing.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/junjieliao/CLionProjects/ray_tracing/main.cpp -o CMakeFiles/ray_tracing.dir/main.cpp.s

CMakeFiles/ray_tracing.dir/Ray.cpp.o: CMakeFiles/ray_tracing.dir/flags.make
CMakeFiles/ray_tracing.dir/Ray.cpp.o: ../Ray.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junjieliao/CLionProjects/ray_tracing/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ray_tracing.dir/Ray.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ray_tracing.dir/Ray.cpp.o -c /Users/junjieliao/CLionProjects/ray_tracing/Ray.cpp

CMakeFiles/ray_tracing.dir/Ray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ray_tracing.dir/Ray.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/junjieliao/CLionProjects/ray_tracing/Ray.cpp > CMakeFiles/ray_tracing.dir/Ray.cpp.i

CMakeFiles/ray_tracing.dir/Ray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ray_tracing.dir/Ray.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/junjieliao/CLionProjects/ray_tracing/Ray.cpp -o CMakeFiles/ray_tracing.dir/Ray.cpp.s

CMakeFiles/ray_tracing.dir/Geometry.cpp.o: CMakeFiles/ray_tracing.dir/flags.make
CMakeFiles/ray_tracing.dir/Geometry.cpp.o: ../Geometry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junjieliao/CLionProjects/ray_tracing/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ray_tracing.dir/Geometry.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ray_tracing.dir/Geometry.cpp.o -c /Users/junjieliao/CLionProjects/ray_tracing/Geometry.cpp

CMakeFiles/ray_tracing.dir/Geometry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ray_tracing.dir/Geometry.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/junjieliao/CLionProjects/ray_tracing/Geometry.cpp > CMakeFiles/ray_tracing.dir/Geometry.cpp.i

CMakeFiles/ray_tracing.dir/Geometry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ray_tracing.dir/Geometry.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/junjieliao/CLionProjects/ray_tracing/Geometry.cpp -o CMakeFiles/ray_tracing.dir/Geometry.cpp.s

CMakeFiles/ray_tracing.dir/Material.cpp.o: CMakeFiles/ray_tracing.dir/flags.make
CMakeFiles/ray_tracing.dir/Material.cpp.o: ../Material.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junjieliao/CLionProjects/ray_tracing/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ray_tracing.dir/Material.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ray_tracing.dir/Material.cpp.o -c /Users/junjieliao/CLionProjects/ray_tracing/Material.cpp

CMakeFiles/ray_tracing.dir/Material.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ray_tracing.dir/Material.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/junjieliao/CLionProjects/ray_tracing/Material.cpp > CMakeFiles/ray_tracing.dir/Material.cpp.i

CMakeFiles/ray_tracing.dir/Material.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ray_tracing.dir/Material.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/junjieliao/CLionProjects/ray_tracing/Material.cpp -o CMakeFiles/ray_tracing.dir/Material.cpp.s

CMakeFiles/ray_tracing.dir/Scene.cpp.o: CMakeFiles/ray_tracing.dir/flags.make
CMakeFiles/ray_tracing.dir/Scene.cpp.o: ../Scene.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junjieliao/CLionProjects/ray_tracing/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ray_tracing.dir/Scene.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ray_tracing.dir/Scene.cpp.o -c /Users/junjieliao/CLionProjects/ray_tracing/Scene.cpp

CMakeFiles/ray_tracing.dir/Scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ray_tracing.dir/Scene.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/junjieliao/CLionProjects/ray_tracing/Scene.cpp > CMakeFiles/ray_tracing.dir/Scene.cpp.i

CMakeFiles/ray_tracing.dir/Scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ray_tracing.dir/Scene.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/junjieliao/CLionProjects/ray_tracing/Scene.cpp -o CMakeFiles/ray_tracing.dir/Scene.cpp.s

CMakeFiles/ray_tracing.dir/Camera.cpp.o: CMakeFiles/ray_tracing.dir/flags.make
CMakeFiles/ray_tracing.dir/Camera.cpp.o: ../Camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junjieliao/CLionProjects/ray_tracing/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ray_tracing.dir/Camera.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ray_tracing.dir/Camera.cpp.o -c /Users/junjieliao/CLionProjects/ray_tracing/Camera.cpp

CMakeFiles/ray_tracing.dir/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ray_tracing.dir/Camera.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/junjieliao/CLionProjects/ray_tracing/Camera.cpp > CMakeFiles/ray_tracing.dir/Camera.cpp.i

CMakeFiles/ray_tracing.dir/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ray_tracing.dir/Camera.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/junjieliao/CLionProjects/ray_tracing/Camera.cpp -o CMakeFiles/ray_tracing.dir/Camera.cpp.s

CMakeFiles/ray_tracing.dir/Renderer.cpp.o: CMakeFiles/ray_tracing.dir/flags.make
CMakeFiles/ray_tracing.dir/Renderer.cpp.o: ../Renderer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junjieliao/CLionProjects/ray_tracing/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/ray_tracing.dir/Renderer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ray_tracing.dir/Renderer.cpp.o -c /Users/junjieliao/CLionProjects/ray_tracing/Renderer.cpp

CMakeFiles/ray_tracing.dir/Renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ray_tracing.dir/Renderer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/junjieliao/CLionProjects/ray_tracing/Renderer.cpp > CMakeFiles/ray_tracing.dir/Renderer.cpp.i

CMakeFiles/ray_tracing.dir/Renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ray_tracing.dir/Renderer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/junjieliao/CLionProjects/ray_tracing/Renderer.cpp -o CMakeFiles/ray_tracing.dir/Renderer.cpp.s

# Object files for target ray_tracing
ray_tracing_OBJECTS = \
"CMakeFiles/ray_tracing.dir/main.cpp.o" \
"CMakeFiles/ray_tracing.dir/Ray.cpp.o" \
"CMakeFiles/ray_tracing.dir/Geometry.cpp.o" \
"CMakeFiles/ray_tracing.dir/Material.cpp.o" \
"CMakeFiles/ray_tracing.dir/Scene.cpp.o" \
"CMakeFiles/ray_tracing.dir/Camera.cpp.o" \
"CMakeFiles/ray_tracing.dir/Renderer.cpp.o"

# External object files for target ray_tracing
ray_tracing_EXTERNAL_OBJECTS =

ray_tracing: CMakeFiles/ray_tracing.dir/main.cpp.o
ray_tracing: CMakeFiles/ray_tracing.dir/Ray.cpp.o
ray_tracing: CMakeFiles/ray_tracing.dir/Geometry.cpp.o
ray_tracing: CMakeFiles/ray_tracing.dir/Material.cpp.o
ray_tracing: CMakeFiles/ray_tracing.dir/Scene.cpp.o
ray_tracing: CMakeFiles/ray_tracing.dir/Camera.cpp.o
ray_tracing: CMakeFiles/ray_tracing.dir/Renderer.cpp.o
ray_tracing: CMakeFiles/ray_tracing.dir/build.make
ray_tracing: CMakeFiles/ray_tracing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/junjieliao/CLionProjects/ray_tracing/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable ray_tracing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ray_tracing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ray_tracing.dir/build: ray_tracing

.PHONY : CMakeFiles/ray_tracing.dir/build

CMakeFiles/ray_tracing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ray_tracing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ray_tracing.dir/clean

CMakeFiles/ray_tracing.dir/depend:
	cd /Users/junjieliao/CLionProjects/ray_tracing/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/junjieliao/CLionProjects/ray_tracing /Users/junjieliao/CLionProjects/ray_tracing /Users/junjieliao/CLionProjects/ray_tracing/cmake-build-debug /Users/junjieliao/CLionProjects/ray_tracing/cmake-build-debug /Users/junjieliao/CLionProjects/ray_tracing/cmake-build-debug/CMakeFiles/ray_tracing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ray_tracing.dir/depend

