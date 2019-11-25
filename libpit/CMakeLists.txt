cmake_minimum_required(VERSION 3.0.0)
project(libpit)

if(NOT APPLE)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu++11")
endif()

set(LIBPIT_SOURCE_FILES
    source/libpit.cpp)

add_library(pit STATIC ${LIBPIT_SOURCE_FILES})
