################################################################################
## Basic Setup
cmake_minimum_required(VERSION 3.2)
project("NML-TO-JSON" VERSION 0.1)
enable_language(Fortran)

################################################################################
## Testing
enable_testing()

################################################################################
## Output Locations
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/include)
install(DIRECTORY ${CMAKE_Fortran_MODULE_DIRECTORY}/
        DESTINATION ${CMAKE_INSTALL_PREFIX}/include)
file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/scratch)

################################################################################
## Get at the source files
subdirs(Source)
subdirs(Tests)
