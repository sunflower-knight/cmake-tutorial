aux_source_directory(src TIMER_SRC)
add_library(timer SHARED ${TIMER_SRC})
target_include_directories(timer PUBLIC include)

set_target_properties(timer PROPERTIES CXX_STANDARD 17) #这个不会造成传染 是非常好用程序 property 是优先的
get_property(var TARGET  timer   PROPERTY CXX_STANDARD )

message("target timer std is ${var}")
message("globe std is ${CMAKE_CXX_STANDARD}")