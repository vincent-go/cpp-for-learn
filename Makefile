CXX := g++

SRC := $(wildcard src/*.cpp)
TESTS := $(wildcard test/*cpp)
INCL_DIR := include/
TARGET_NAME := cppLearn
TARGET_NAME_TESTS := cppLearn-test

clean: 
	rm -r -f build && rm -r -f build/test

$(TARGET_NAME):
	@mkdir build
	@$(CXX) -I$(INCL_DIR) $(SRC) -o build/cppLearn

$(TARGET_NAME_TESTS):
	@mkdir build/test
	@$(CXX) $(TESTS) -o build/test/cppLearn-test