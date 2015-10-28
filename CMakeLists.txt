cmake_minimum_required(VERSION 2.8)
project( wapiti )

message("WAPITI_INSTALL_DIR=$ENV{WAPITI_INSTALL_DIR}")
set(CMAKE_INSTALL_PREFIX  $ENV{WAPITI_INSTALL_DIR} )


set(CMAKE_C_FLAGS "-std=c99")

AUX_SOURCE_DIRECTORY(src SOURCES)

add_library( wapiti SHARED ${SOURCES} )
install( TARGETS wapiti DESTINATION lib )

set( CMAKE_VERBOSE_MAKEFILE on )

#add_subdirectory("src")
