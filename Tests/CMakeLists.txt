################################################################################
find_package(PythonInterp REQUIRED)
find_program(BASH_PROGRAM bash)

################################################################################
add_executable(Convert convert.f90)
target_link_libraries(Convert nml_to_json)
install(TARGETS Convert DESTINATION bin)

################################################################################
configure_file(Test1.nml Test1.nml COPYONLY)
configure_file(Test2.nml Test2.nml COPYONLY)
configure_file(Test3.nml Test3.nml COPYONLY)
configure_file(Test4.nml Test4.nml COPYONLY)
configure_file(run_test.sh ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/run_test.sh @ONLY)
configure_file(reference.py ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/reference.py
               COPYONLY)
configure_file(compare.py ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/compare.py
               COPYONLY)

################################################################################
add_test(Test1 ${BASH_PROGRAM} ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/run_test.sh
         Test1)
