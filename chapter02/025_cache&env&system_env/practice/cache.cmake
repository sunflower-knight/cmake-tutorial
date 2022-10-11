message(STATUS "引入天堂有限公司工程缓存变量")

# 变量-赋值-CACHE-缓存变量的类型-具体说明
set(TIMER_PATH "/home/hyj/...../timer" CACHE PATH "CACHE TIMER PATH ")

message(${TIMER_PATH})

set(CMAKE_VERSION_LIMIT "3.20" CACHE STRING "THE LIMIT FOE CMAKE VERSION")