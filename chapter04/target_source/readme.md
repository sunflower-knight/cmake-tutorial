
# TODO 这个指令 应该先放在后面 再讲解 以后详解 此处提一下
######### CmakeLists 方式三：先生成target 再指定源文件和头文件 ###
#add_library(log SHARED src/log.cpp) #
#target_sources(log PRIVATE  src/print.cpp src/time.cpp)
#target_include_directories(log PUBLIC include)

######### CmakeLists 方式三：先生成target 再补充源文件和头文件 ###
#add_library(log SHARED  ) #
#target_sources(log PRIVATE  src/log.cpp src/print.cpp src/time.cpp)
#target_include_directories(log PUBLIC include)