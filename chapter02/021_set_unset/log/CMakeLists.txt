message(STATUS "----------------------------") # 父目录的变量

aux_source_directory(src LogSrc) # aux 将目录下src所有源文件的放置在变量LogSrc中
add_library(log SHARED ${LogSrc})
target_include_directories(log PUBLIC include)

message(STATUS "My teacher is ${Teacher}") # 父目录的变量 Teacher

message(STATUS "My dream is ${Dream}") # 父目录的变量 Dream 被取消了

message(STATUS "----------------------------") # 父目录的变量