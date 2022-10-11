# cmake_version_minimum_required
cmake_minimum_required(VERSION 3.10)

# project name
project(cmake-tutorial)

# build an executable
add_executable(exefile main.cpp print.h)  # 检索时的目录是当前 CMakeLists 所在的目录