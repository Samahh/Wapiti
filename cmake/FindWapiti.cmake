# - Try to find wapiti
# Once done this will define
# wapiti_FOUND - system has wapiti
# wapiti_INCLUDE_DIRS - include directories for wapiti
# wapiti_LIBRARIES - libraries for wapiti
FIND_PATH(wapiti_INCLUDE_DIRS wapiti.h
PATHS $ENV{WAPITI_INSTALL_DIR}/include)
FIND_LIBRARY(wapiti_LIBRARIES NAMES wapiti
PATHS $ENV{WAPITI_INSTALL_DIR}/lib)
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(wapiti DEFAULT_MSG
wapiti_LIBRARIES
wapiti_INCLUDE_DIRS)

#set(wapiti_FOUND ${wapiti_FOUND})
#MARK_AS_ADVANCED(wapiti_FOUND wapiti_INCLUDE_DIRS wapiti_LIBRARIES)
