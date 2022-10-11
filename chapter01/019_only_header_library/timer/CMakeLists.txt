aux_source_directory(src TIMER_SRC)
add_library(timer SHARED ${TIMER_SRC})
target_include_directories(timer PUBLIC include)
target_link_libraries(timer PUBLIC clock)