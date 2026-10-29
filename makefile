SRC := src
LIB := lib
EXTERNALSRC := src/externalSrc
INCLUDE := include

CC := g++
FLAGS := 

all: BSgameEngine

MYDEPENDENCIES = $(SRC)/main.cpp $(SRC)/BSRenderer.cpp $(SRC)/BSAudioHandler.cpp $(SRC)/BSUserInterfaceHandler.cpp

BSgameEngine: $(MYDEPENDENCIES)
	$(CC) $(FLAGS) -o BSgameEngine $(MYDEPENDENCIES) -I./include

BSRenderer.cpp: $(EXTERNALSRC)/glad.c $(INCLUDE)/stb_image.h $(INCLUDE)/glad/glad.h $(INCLUDE)/KHR/khrplatform.h $(INCLUDE)/Renderer.h

BSAudioHandler.cpp: $(INCLUDE)/miniaudio.h

BSUserInterfaceHandler.cpp: $(LIB)/libglfw3.a $(INCLUDE)/GLFW/glfw3.h $(SRC)/windowHandler.cpp $(SRC)/inputHandler.cpp

BSManagerThread.cpp:

BSPhysics.cpp:
clean:
	rm BSgameEngine.exe