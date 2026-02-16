cmake_minimum_required(VERSION 4.0)
project(imgui_idle_game)

set(CMAKE_CXX_STANDARD 26)

find_package(glfw3 REQUIRED)
include_directories(glad/include)
include_directories(imgui)
add_subdirectory(imgui)

add_executable(imgui_idle_game main.cpp glad/src/gl.c
        callbacks.cpp
        callbacks.h)
target_link_libraries(imgui_idle_game PRIVATE glfw)
target_link_libraries(imgui_idle_game PUBLIC imgui imgui-glfw imgui-opengl3)
#target_link_libraries(${PROJECT_NAME} PRIVATE glad)