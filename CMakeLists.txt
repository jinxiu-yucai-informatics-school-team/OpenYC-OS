#
# Copyright (c) 2024-present Jinxiu Yucai Informatics School Team
# All rights reserved.
#
# Create Time: 2024/01/15
# Author: xk2013
# E-Mail: hzk201312@163.com
#

cmake_minimum_required(VERSION 3.0.0)
project(OpenYC-OS VERSION 1.0.0)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_VERBOSE_MAKEFILE On)
set(EXECUTABLE_OUTPUT_PATH ./build/bin)
set(LIBRARY_OUTPUT_DIRECTORY ./build/lib)
set(PROJECT_BINARY_DIR ./build)

add_subdirectory(./src/boot)
add_subdirectory(./src/command)
add_subdirectory(./src/config)
add_subdirectory(./src/device)
add_subdirectory(./src/filesystem)
add_subdirectory(./src/initial)
add_subdirectory(./src/kernel)
add_subdirectory(./src/library)
add_subdirectory(./src/loader)
add_subdirectory(./src/network)
add_subdirectory(./src/syscall)
add_subdirectory(./src/tools)
