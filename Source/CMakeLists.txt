################################################################################
set(Fsrc
    NMLToJSON.f90
)

################################################################################
add_library(nml_to_json ${Fsrc})
target_include_directories(nml_to_json PUBLIC ${MPI_Fortran_INCLUDE_PATH})

include(GNUInstallDirs)
install(TARGETS nml_to_json
        EXPORT nml_to_json-export
        INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR})

################################################################################
# For Exporting
install(EXPORT nml_to_json-export FILE nml_to_json.cmake
NAMESPACE NMLTOJSON:: DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/nml_to_json)
