cmake_minimum_required(VERSION 4.0)
project(imgui_idle_game)

set(CMAKE_CXX_STANDARD 26)

if (WIN32)
    option(WinStatic "Static Build" OFF)
    if (WinStatic)
        set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
    endif()
    find_package(glfw3 CONFIG REQUIRED)
    find_package(Freetype REQUIRED)
elseif (UNIX)
    option(UnixStatic "Static Build" OFF)
    if (UnixStatic)
        option(BUILD_SHARED_LIBS "" OFF)
        option(CMAKE_EXE_LINKER_FLAGS "" "-static")
    endif ()
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
    if (UnixStatic)
        target_link_options(imgui_idle_game PRIVATE "-static")
    endif ()
endif ()