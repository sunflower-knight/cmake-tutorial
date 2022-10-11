# 指定cmake 的最低版本
cmake_minimum_required(VERSION 3.10)

# 构建项目的名称
project(cmake-tutorial)

# 处理子模块
add_subdirectory(log)

# 构建执行程序
add_executable(exefile main.cpp)

# 链接库文件
target_link_libraries(exefile PUBLIC log_dynamic) # PUBLIC 的功能后面再讲解
#target_link_libraries(exefile PUBLIC log_static)
