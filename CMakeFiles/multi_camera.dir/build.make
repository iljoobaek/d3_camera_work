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
CMAKE_SOURCE_DIR = /home/jetson/workbench/opencv_multicamera

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jetson/workbench/opencv_multicamera

# Include any dependencies generated for this target.
include CMakeFiles/multi_camera.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/multi_camera.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/multi_camera.dir/flags.make

CMakeFiles/multi_camera.dir/multi_camera.cpp.o: CMakeFiles/multi_camera.dir/flags.make
CMakeFiles/multi_camera.dir/multi_camera.cpp.o: multi_camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jetson/workbench/opencv_multicamera/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/multi_camera.dir/multi_camera.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/multi_camera.dir/multi_camera.cpp.o -c /home/jetson/workbench/opencv_multicamera/multi_camera.cpp

CMakeFiles/multi_camera.dir/multi_camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/multi_camera.dir/multi_camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jetson/workbench/opencv_multicamera/multi_camera.cpp > CMakeFiles/multi_camera.dir/multi_camera.cpp.i

CMakeFiles/multi_camera.dir/multi_camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/multi_camera.dir/multi_camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jetson/workbench/opencv_multicamera/multi_camera.cpp -o CMakeFiles/multi_camera.dir/multi_camera.cpp.s

CMakeFiles/multi_camera.dir/multi_camera.cpp.o.requires:

.PHONY : CMakeFiles/multi_camera.dir/multi_camera.cpp.o.requires

CMakeFiles/multi_camera.dir/multi_camera.cpp.o.provides: CMakeFiles/multi_camera.dir/multi_camera.cpp.o.requires
	$(MAKE) -f CMakeFiles/multi_camera.dir/build.make CMakeFiles/multi_camera.dir/multi_camera.cpp.o.provides.build
.PHONY : CMakeFiles/multi_camera.dir/multi_camera.cpp.o.provides

CMakeFiles/multi_camera.dir/multi_camera.cpp.o.provides.build: CMakeFiles/multi_camera.dir/multi_camera.cpp.o


# Object files for target multi_camera
multi_camera_OBJECTS = \
"CMakeFiles/multi_camera.dir/multi_camera.cpp.o"

# External object files for target multi_camera
multi_camera_EXTERNAL_OBJECTS =

multi_camera: CMakeFiles/multi_camera.dir/multi_camera.cpp.o
multi_camera: CMakeFiles/multi_camera.dir/build.make
multi_camera: /usr/local/lib/libopencv_cudabgsegm.so.3.4.0
multi_camera: /usr/local/lib/libopencv_cudaobjdetect.so.3.4.0
multi_camera: /usr/local/lib/libopencv_cudastereo.so.3.4.0
multi_camera: /usr/local/lib/libopencv_dnn.so.3.4.0
multi_camera: /usr/local/lib/libopencv_ml.so.3.4.0
multi_camera: /usr/local/lib/libopencv_shape.so.3.4.0
multi_camera: /usr/local/lib/libopencv_stitching.so.3.4.0
multi_camera: /usr/local/lib/libopencv_superres.so.3.4.0
multi_camera: /usr/local/lib/libopencv_videostab.so.3.4.0
multi_camera: /usr/local/lib/libopencv_cudafeatures2d.so.3.4.0
multi_camera: /usr/local/lib/libopencv_cudacodec.so.3.4.0
multi_camera: /usr/local/lib/libopencv_cudaoptflow.so.3.4.0
multi_camera: /usr/local/lib/libopencv_cudalegacy.so.3.4.0
multi_camera: /usr/local/lib/libopencv_calib3d.so.3.4.0
multi_camera: /usr/local/lib/libopencv_cudawarping.so.3.4.0
multi_camera: /usr/local/lib/libopencv_features2d.so.3.4.0
multi_camera: /usr/local/lib/libopencv_flann.so.3.4.0
multi_camera: /usr/local/lib/libopencv_highgui.so.3.4.0
multi_camera: /usr/local/lib/libopencv_objdetect.so.3.4.0
multi_camera: /usr/local/lib/libopencv_photo.so.3.4.0
multi_camera: /usr/local/lib/libopencv_cudaimgproc.so.3.4.0
multi_camera: /usr/local/lib/libopencv_cudafilters.so.3.4.0
multi_camera: /usr/local/lib/libopencv_cudaarithm.so.3.4.0
multi_camera: /usr/local/lib/libopencv_video.so.3.4.0
multi_camera: /usr/local/lib/libopencv_videoio.so.3.4.0
multi_camera: /usr/local/lib/libopencv_imgcodecs.so.3.4.0
multi_camera: /usr/local/lib/libopencv_imgproc.so.3.4.0
multi_camera: /usr/local/lib/libopencv_core.so.3.4.0
multi_camera: /usr/local/lib/libopencv_cudev.so.3.4.0
multi_camera: CMakeFiles/multi_camera.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jetson/workbench/opencv_multicamera/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable multi_camera"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/multi_camera.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/multi_camera.dir/build: multi_camera

.PHONY : CMakeFiles/multi_camera.dir/build

CMakeFiles/multi_camera.dir/requires: CMakeFiles/multi_camera.dir/multi_camera.cpp.o.requires

.PHONY : CMakeFiles/multi_camera.dir/requires

CMakeFiles/multi_camera.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/multi_camera.dir/cmake_clean.cmake
.PHONY : CMakeFiles/multi_camera.dir/clean

CMakeFiles/multi_camera.dir/depend:
	cd /home/jetson/workbench/opencv_multicamera && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jetson/workbench/opencv_multicamera /home/jetson/workbench/opencv_multicamera /home/jetson/workbench/opencv_multicamera /home/jetson/workbench/opencv_multicamera /home/jetson/workbench/opencv_multicamera/CMakeFiles/multi_camera.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/multi_camera.dir/depend

