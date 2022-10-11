# 版本限制
cmake_minimum_required(VERSION 3.10)
# 项目名
project(cmake-tutorial)

add_subdirectory(timer)
add_subdirectory(clock)
add_executable(exefile main.cpp)
target_link_libraries(exefile PUBLIC timer)