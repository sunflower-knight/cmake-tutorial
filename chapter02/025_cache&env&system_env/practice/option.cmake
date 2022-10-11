message(STATUS "引入天堂有限公司工程检查标准")
# 版本环境检查 使用全局缓存变量
# set(CMAKE_VERSION_CHECK "ON" CACHE BOOL "打开cmake版本标准检查")
# option 是 布尔缓存变量赋值的简化
option(CMAKE_VERSION_CHECK "打开cmake版本标准检查" ON) #非常简洁

# set() #设置一个版本
if(CMAKE_VERSION_CHECK)
    if(${CMAKE_VERSION} VERSION_GREATER_EQUAL CMAKE_VERSION_LIMIT)
        message("CMAKE版本高于" ${CMAKE_VERSION_LIMIT} "请注意编译报错")
    endif()
endif()