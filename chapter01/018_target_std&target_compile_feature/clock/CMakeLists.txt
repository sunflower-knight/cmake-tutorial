aux_source_directory(src CLOCK_SRC)
add_library(clock SHARED ${CLOCK_SRC})
target_include_directories(clock PUBLIC include)

set_target_properties(clock PROPERTIES  CMAKE_CXX_STANDARD 98)