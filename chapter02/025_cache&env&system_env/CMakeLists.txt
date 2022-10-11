cmake_minimum_required(VERSION 3.10)

project(cmake-tutorial)



# 1. cache
include(practice/cache.cmake)

# 2. option
include(practice/option.cmake)

add_subdirectory(timer)
add_executable(exefile main.cpp)
target_link_libraries(exefile PUBLIC timer)