#include <iostream>
#include <thread>

#include "Renderer.h"

void renderThread() {
	std::cout << "Hello render!" << std::endl;
}

std::jthread enterRenderThread() {
	return std::jthread(renderThread);
}