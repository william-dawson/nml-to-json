################################################################################
find_package(PythonInterp REQUIRED)

################################################################################
configure_file(Test1.nml Test1.nml COPYONLY)
configure_file(Test2.nml Test2.nml COPYONLY)
configure_file(Test3.nml Test3.nml COPYONLY)
configure_file(Test4.nml Test4.nml COPYONLY)
configure_file(run_test.py ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/run_test.py
               COPYONLY)

################################################################################
add_test(Test1 ${PYTHON_EXECUTABLE}
         ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/run_test.py
         ${PROJECT_BINARY_DIR}/Tests/Test1.nml)
add_test(Test2 ${PYTHON_EXECUTABLE}
         ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/run_test.py
         ${PROJECT_BINARY_DIR}/Tests/Test2.nml)
add_test(Test3 ${PYTHON_EXECUTABLE}
         ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/run_test.py
         ${PROJECT_BINARY_DIR}/Tests/Test3.nml)
add_test(Test4 ${PYTHON_EXECUTABLE}
         ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/run_test.py
         ${PROJECT_BINARY_DIR}/Tests/Test4.nml)
