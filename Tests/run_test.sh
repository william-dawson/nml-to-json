################################################################################
## The full testing procedure.

TEST=$1

@PYTHON_EXECUTABLE@ @CMAKE_RUNTIME_OUTPUT_DIRECTORY@/reference.py \
       @PROJECT_BINARY_DIR@/Tests/${TEST}.nml \
       @PROJECT_BINARY_DIR@/scratch/${TEST}-check.json
@CMAKE_RUNTIME_OUTPUT_DIRECTORY@/Convert \
       @PROJECT_BINARY_DIR@/Tests/${TEST}.nml \
       @PROJECT_BINARY_DIR@/scratch/${TEST}.json
@PYTHON_EXECUTABLE@ @CMAKE_RUNTIME_OUTPUT_DIRECTORY@/compare.py \
       @PROJECT_BINARY_DIR@/scratch/${TEST}-check.json \
       @PROJECT_BINARY_DIR@/scratch/${TEST}.json
