SRC := src
LIB := lib
EXTERNALSRC := src/externalSrc
INCLUDE := include

CC := g++
FLAGS := -std=c++20

run: all
	BSgameEngine.exe

all: BSgameEngine

MY_DEPENDENCIES = $(SRC)/main.cpp $(SRC)/BSRenderer.o $(SRC)/BSAudioHandler.cpp $(SRC)/BSUserInterfaceHandler.cpp
RENDER_DEPENDENCIES = $(EXTERNALSRC)/glad.c $(SRC)/BSRenderer.cpp
RENDER_LIB = -lopengl32 -lgdi32
WINDOW_LIB = -lglfw3 -lgdi32

BSgameEngine: $(MY_DEPENDENCIES)
	$(CC) $(FLAGS) -o BSgameEngine $(MY_DEPENDENCIES) -I./include

$(SRC)/BSRenderer.o:  $(SRC)/BSRenderer.cpp $(RENDER_DEPENDENCIES)
	$(CC) $(FLAGS) -c -o BSRenderer.o $(SRC)/BSRenderer.cpp -I./include

$(SRC)/BSAudioHandler.cpp: $(INCLUDE)/miniaudio.h -I./include

$(SRC)/BSUserInterfaceHandler.cpp: $(LIB)/libglfw3.a $(INCLUDE)/GLFW/glfw3.h $(SRC)/windowHandler.cpp $(SRC)/inputHandler.cpp

$(SRC)BSManagerThread.cpp:

$(SRC)BSPhysics.cpp:

clean:
	rm BSgameEngine.exe