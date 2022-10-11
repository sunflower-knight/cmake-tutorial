message(STATUS "---------------------------------------log")
message(WARNING "log 源文件损坏可能导致编译失败") #warning 会显示行号

aux_source_directory(src LOG_SRC)
message("log source file list: ${LOG_SRC} ")
add_library(log SHARED ${LOG_SRC})
target_include_directories(log PUBLIC include)
message(STATUS "---------------------------------------")