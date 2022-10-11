# 生成动态库或者静态库
add_library(log_dynamic SHARED log.cpp log.h)
add_library(log_static STATIC log.cpp log.h)