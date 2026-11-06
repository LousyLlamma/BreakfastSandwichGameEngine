#include <iostream>
#include <thread>

#include "glad/glad.h"
#include "GLFW/glfw3.h"

#include "Renderer.h"

void renderThread(int n) {
	std::cout << "Hello render! I am " << n << "!" << std::endl;
}

std::jthread enterRenderThread() {
	return std::jthread(renderThread, 1);
}