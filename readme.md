#### 1 C/C++工程构建

**该仓库包含一些常见的C/C++工程构建模板，简单构建了模块1。**对于一个较大的软件项目，我们会依赖很多第三方的项目，包括源码依赖或者库依赖，然后完整的构建自己的软件项目，则需要去构建依赖项目或者找到所需要库；另外，软件项目会考虑到可移植性，即能够在不同的平台上也能够很好友的去构建项目以及将项目转移到另一个开发环境时能够快速的开始构建。除了上面所说的，还需要考虑实际软件项目的架构结构，源码结构，可以让开发人员更清晰的、更快速的了解整个项目。优雅的构建工程项目，须大致实现：

- 软件项目源码依赖第三方项目
- 软件项目库依赖第三方项目
- 软件项目结构清晰
- 软件项目构建在转换新环境下快速实现构建
- 软件项目构建过程中的信息友好展示
- 软件项目构建完成后打包发布
- 软件项目支持跨平台构建
- 软件项目支持交叉构建
- git & cmake管理/构建源码级依赖

##### 1.1 模板1

一个独立的应用，应用模块之间是相互联系的，彼此难以分开，这样简单的将所有源文件放一起，头文件放一起，这个对于不是很复杂的应用是很快速的去开始构建和源文件修改操作：

```tex
.
├── 3rdparty    # 存放第三方库
├── bin			# exe输出目录
├── config                  # 项目配置文件存放目录
├── build
├── include		# 所有依赖头文件
├── lib			# 动态库静态库输出目录
├── src
    ├── moudle1
        ├── source
    ├── moudle2
        ├── source   
├── doc
├── resource
├── tests
├── docker
├── CMakeLists.txt
```

##### 1.2 模板2

源文件与头文件分功能模块存放，这种方式是比较简单，但是如果成为其他项目的3rdparty，则需要在安装上将头文件分离出来，不能很方便的被其他项目直接引用，个人觉得适用于App类项目，而非SDK项目(比如nanomsg这个开源消息中间件库就是将头文件和源文件放一起，但是作为SDK供外部链接就不是很直接、很方便了，需要做install操作之后才可以或者是将头文件搜索范围设置到依赖项目的src级别，且src目录下模块分类很明确)：

```text
├── 3rdparty
    ├── submodule  # 存放源码依赖
    ├── target     # 存放库依赖
    ├── CMakeLists.txt
    ├── cmake      # 存放find_package cmake文件
├── bin
├── build
├── lib
├── platforms
│   └── linux
│       └── arm.toolchain.cmake
├── src
    ├── moudle1
        ├── source & include file
    ├── moudle2
        ├── source & include file
    ├── ......
├── doc
├── docker
├── resource
├── samples
├── tests
├── CMakeLists.txt
```

##### 1.3 模板3

当软件项目可以分为很多模块，各个模块可以互相独立，也可以组合在一起，典型的如OpenCV项目，当然这个也适用于应用项目，但是应用项目的话目录结构太深，开发编辑上稍有不便：

```tex
├── 3rdparty
├── build
├── data
├── platforms
│   └── linux
│       └── arm.toolchain.cmake
├── include  	#该目录只是各功能模块头文件的一个汇总包含
├── modules
    ├── moudle1
        ├── src
        ├── include
    ├── moudle2
    ├── ......
├── doc
├── tests
├── samples
├── docker
├── CMakeLists.txt
```

##### 1.4 模板4

另一个模块分离的模板：

```text
.
├── 3rdparty                # 第三方库源码依赖和库依赖存放位置
│   ├── CMakeLists.txt      # 第三方库源码依赖编译CMakeLists文件
│   ├── spdlog              # 源码依赖示例项目spdlog(github可搜索)
│   └── target              # 库依赖存放目录
│       ├── linux_armv7-a   # 以平台和架构命名区分
│       │   ├── include     # 头文件存放目录
│       │   └── lib         # 库文件存放目录
│       └── linux_x86-64
│           ├── include
│           └── lib
├── build                 
├── cmake                   # 存放项目相关的cmakem模块文件
│   ├── load_3rdparty.cmake
│   ├── messagecolor.cmake
│   ├── toolchain_options.cmake
│   └── utils.cmake
├── CMakeLists.txt          # 项目根目录CMakeLists文件，cmake入口文件
├── config                  # 项目配置文件存放目录
├── doc                     # 项目文档存放目录
├── platforms               # 项目平台性相关内容存放目录，包括交叉编译
│   └── linux
│       └── arm.himix200.cmake
├── readme.md               # 项目说明
├── samples
├── scripts                 # 相关脚本存放目录，包括持续集成和部署相关
├── src                     # 项目源码目录
│   ├── CMakeLists.txt
│   ├── common
│   ├── logger
│   └── main
└── tests                   # 测试示例源码存放目录
    ├── CMakeLists.txt
    └── test_logger.cpp
```

