cmake_minimum_required(VERSION 2.8)
project( wapiti )

set(CMAKE_C_FLAGS "-std=c99")

AUX_SOURCE_DIRECTORY(src SOURCES)

add_library( wapiti SHARED ${SOURCES} )

set( CMAKE_VERBOSE_MAKEFILE on )

#add_subdirectory("src")
