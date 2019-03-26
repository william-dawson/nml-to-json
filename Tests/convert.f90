!> A test driver program for the package.
!! This takes two input arguments: the input namelist, and the output
!! json file to write to.
PROGRAM Convert
  USE NMLTOJSONModule, ONLY : ConvertNMLToJson
  IMPLICIT NONE
  CHARACTER(LEN=1024) :: infile
  CHARACTER(LEN=1024) :: outfile
  CHARACTER(LEN=:), ALLOCATABLE :: outstr
  !! Get the input
  CALL GET_COMMAND_ARGUMENT(1, infile)
  CALL GET_COMMAND_ARGUMENT(2, outfile)

  !! Convert
  CALL ConvertNMLToJson(infile, outstr)

  !! Write to file
  OPEN(UNIT=10, file=outfile)
  WRITE(UNIT=10, FMT=*) outstr
  CLOSE(10)

  !! Cleanup
  DEALLOCATE(outstr)
END PROGRAM Convert
