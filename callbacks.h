//
// Created by inyourface34445 on 2/15/26.
//

#ifndef CALLBACKS_H
#define CALLBACKS_H
#include <GLFW/glfw3.h>

void error_callback(int error, const char* description);
void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods);
void window_size_callback(GLFWwindow* window, int width, int height);
void framebuffer_size_callback(GLFWwindow* window, int width, int height);

#endif //CALLBACKS_H
