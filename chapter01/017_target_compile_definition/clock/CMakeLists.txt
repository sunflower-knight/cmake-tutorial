aux_source_directory(src CLOCK_SRC)
add_library(clock SHARED ${CLOCK_SRC})
target_include_directories(clock PUBLIC include)

target_compile_definitions(clock PRIVATE DEBUG=1)