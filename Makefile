SRC_DIR = src
BUILD_DIR = build/debug
CC = g++
SRC_FILES = $(wildcard $(SRC_DIR)/*.cpp)
OBJ_NAME = play
INCLUDE_PATHS = -F/Library/Frameworks
LIBRARY_PATHS = -F/Library/Frameworks
COMPILER_FLAGS = -std=c++11 -Wall -O0 -g
LINKER_FLAGS = -framework SDL2 -framework SDL2_image -Wl,-rpath,/Library/Frameworks

all:
	$(CC) $(COMPILER_FLAGS) $(LINKER_FLAGS) $(INCLUDE_PATHS) $(LIBRARY_PATHS) $(SRC_FILES) -o $(BUILD_DIR)/$(OBJ_NAME)
#	$(CC) -v $(COMPILER_FLAGS) $(LINKER_FLAGS) $(INCLUDE_PATHS) $(LIBRARY_PATHS) $(SRC_FILES) -o test