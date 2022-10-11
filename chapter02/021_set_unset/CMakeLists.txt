# 指定cmake 的最低版本
cmake_minimum_required(VERSION 3.20)

# 构建项目的名称
project(cmake-tutorial)

message(STATUS "----------------------------")
# 语法练习
######################################################
#设置变量+访问变量+取消变量
set(Teacher "Zhang Dong")
message(STATUS "My teacher is ${Teacher}") # 变量在字符串中

set(Dream "RoboMaster")
message(STATUS "My Dream is ${Dream}") # 变量在字符串中
message(STATUS "My Dream is " ${Dream}) # 变量在字符串外

set(Life "Dream")
message(STATUS "My Life is  ${${Life}} ") # 变量的嵌套解开

unset(Dream) # 取消变量
#######################################################

# 处理子模块
add_subdirectory(log)

# 构建执行程序
add_executable(exefile main.cpp)
target_link_libraries(exefile PUBLIC #[[使用PRIVATE也行]] log)