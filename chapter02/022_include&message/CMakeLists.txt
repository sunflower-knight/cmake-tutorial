# 指定cmake 的最低版本
cmake_minimum_required(VERSION 3.10...3.15) #cmake 3.12  #TODO 弄明白 min...max 的意思并添加注释

# 构建项目的名称
project(cmake-tutorial)

# 语法练习
######################################################
# include(<file|module> [OPTIONAL] [RESULT_VARIABLE <var>] [NO_POLICY_SCOPE])
# CMAKE_MESSAGE_LOG_LEVEL # 消息等级设置
set(CMAKE_MESSAGE_LOG_LEVEL WARNING) #MESSAGE 等级设置

include(practice/find.cmake OPTIONAL) #找不到文件不会出错
include(practice/message.cmake) #找不到文件则配置失败

include(practice/nothing.cmake OPTIONAL RESULT_VARIABLE nothing_path) # 找到目标之后将绝对路径保存在变量中
message(NOTICE ${nothing_path})

#######################################################
# 处理子模块
add_subdirectory(log)

# 构建执行程序
add_executable(exefile main.cpp)
target_link_libraries(exefile PUBLIC #[[不要使用PRIVATE]] log)