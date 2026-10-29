#include <iostream>
#include <thread>

#include "Renderer.h"

int main() {

	std::cout << "Hello world!" << std::endl;
	std::jthread renderThread = enterRenderThread();


	renderThread.join();
	return 0;

}