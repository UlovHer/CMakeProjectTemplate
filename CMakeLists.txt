cmake_minimum_required(VERSION 3.0.0)
project(ProjectTemplate VERSION 0.1.0)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})

# 设置C/C++标准
# 启动对C11标准的支持
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c11")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

# 设置 可执行程序输出目录
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin/x64)
# 设置库文件输出目录
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib/x64)
# 添加库文件路径
set(LINK_DIRECTORIES ${PROJECT_SOURCE_DIR}/3rdparty/opencv2/lib/x64)
set(PROJECT_DLL_Dir ${PROJECT_SOURCE_DIR}/3rdparty/opencv2/dll/x64)

# 添加头文件路径
include_directories(${PROJECT_SOURCE_DIR}/include)

# 添加库文件路径
LINK_DIRECTORIES(${LINK_DIRECTORIES})

# 添加参与编译的子目录 
ADD_SUBDIRECTORY(${PROJECT_SOURCE_DIR}/src/moudle1)
ADD_SUBDIRECTORY(${PROJECT_SOURCE_DIR}/src/moudle2)

# 递归获取目录下所有的C/C++文件,编译main
FILE(GLOB_RECURSE Cpp_files ${PROJECT_SOURCE_DIR}/src/*.cpp)

# 生成执行文件
add_executable(ProjectTemplate ${Cpp_files})

# 链接库文件
TARGET_LINK_LIBRARIES(${PROJECT_NAME} PUBLIC ${LINK_DLL_LIBS})

# 复制目录下的全部动态库文件
add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_directory
        "${PROJECT_DLL_Dir}"
        $<TARGET_FILE_DIR:${PROJECT_NAME}>)
