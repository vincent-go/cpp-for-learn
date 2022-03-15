cmake_minimum_required(VERSION 3.7.2)

option(BUILD_TESTS "Tuen on build for tests of CPPLearn" OFF)

project(cppLearn)

file(GLOB SRC_FILES "src/*cpp")

set(INC_FILES_DIR include/)

if (BUILD_TESTS)
    add_subdirectory(test)
endif()

include_directories(${INC_FILES_DIR})

add_executable(CPPLearn ${SRC_FILES})

