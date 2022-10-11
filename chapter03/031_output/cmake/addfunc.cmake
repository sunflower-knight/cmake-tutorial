#常用函数

# target source dir #将目录下的源文件添加到target中 默认是PRIVATE添加
# 模仿target_include_dir 风格编写
function(target_sources_dir target dir)
    aux_source_directory(SRC dir)
    target_sources(target PRIVATE ${SRC})
endfunction()
