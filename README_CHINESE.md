# vim-syntastic-generator

**一个用于自动生成 [vim-syntastic/syntastic](https://github.com/vim-syntastic/syntastic) syntastic_cpp_config_file 配置文件的脚本，用于 syntastic 插件查找头文件位置。**

`vim-syntastic-generator` 会使用 `fake-toolchain` 目录 下的工具编译项目，工具仅仅过滤提取提取编译指令，并不会真正编译项目，更不会生成编译文件。

**正因为如此，vim-syntastic-generator 生成一个大项目的配置速度极快。**


## 近期特性

* 2019/3/23 v0.01 支持 make 编译系统

## 安装

For Plug

```Plug 'cposture/vim-syntastic-generator'```

## 使用

* 在 vim 外：```./config_gen.py PROJECT_DIRECTORY```，PROJECT_DIRECTORY 是你的项目根目录（该目录下需要有 makefile 文件）

* 在 vim 里：```:VimSyntasticConfig```，会在当前目录生成配置文件，命令接受和```./config_gen.py``` 一样的参数，但不需要项目路径参数（它会使用当前目录作为项目目录）

* 绑定快捷键：在当前目录，用 g++ 模式生成配置文件，```noremap <C-I> :VimSyntasticConfig -v -f -c g++ .<CR>```

## 依赖 & 限制

* 依赖：
    + Python 2

* 支持的编译系统
    + make

## 文档 & 支持

* ```./config_gen.py -h``` 查看帮助文档
* 如果收到这样的错误信息 ```ERROR: No commands were logged to the build logs```，麻烦使用 `-v` 选项在运行插件的时候查看更详细的运行信息

## 支持
欢迎大家一起完善这个插件，大家可以将修复 pull 到 ```develop``` 分支

## 许可
vim-syntastic-generator 使用 GNU GPLv3 协议
