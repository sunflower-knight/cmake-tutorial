aux_source_directory(src TIMER_SRC)
add_library(timer SHARED ${TIMER_SRC})
target_include_directories(timer PUBLIC include)

add_library(timer_obj OBJECT ${TIMER_SRC} )
target_include_directories(timer_obj PUBLIC include)

# 设定动态库的版本
set_target_properties(
    timer PROPERTIES
    VERSION "2.0.1" # 用于编译
    SOVERSION "15" # 用于系统链接
    NO_SONAME ON  # 不生成动态符号软链接
    # 动态库 不同版本的 输出路径
    RUNTIME_OUTPUT_DIRECTORY_DEBUG #指定路径
    RUNTIME_OUTPUT_DIRECTORY_RELEASE
    # window 是无效的
)