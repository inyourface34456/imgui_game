cmake_minimum_required(VERSION 4.0)
project(imgui_idle_game)

set(CMAKE_CXX_STANDARD 26)

if (WIN32)
    find_package(glfw3 CONFIG REQUIRED)
    find_package(Freetype REQUIRED)
elseif (UNIX)
    find_package(glfw3 REQUIRED)
endif ()

include_directories(glad/include)
include_directories(imgui)
add_subdirectory(imgui)

add_executable(imgui_idle_game main.cpp glad/src/gl.c
        callbacks.cpp
        callbacks.h)

if (WIN32)
    target_link_libraries(imgui_idle_game PRIVATE glfw Freetype::Freetype)
    target_link_libraries(imgui_idle_game PUBLIC imgui imgui-glfw imgui-opengl3)
elseif (UNIX)
    target_link_libraries(imgui_idle_game PRIVATE glfw)
    target_link_libraries(imgui_idle_game PUBLIC imgui imgui-glfw imgui-opengl3)
endif ()