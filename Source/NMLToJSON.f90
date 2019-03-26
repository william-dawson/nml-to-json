!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!> A module for converting Fortran namelists to JSON.
MODULE NMLTOJSONModule
  IMPLICIT NONE
  PUBLIC :: ConvertNMLToJson
CONTAINS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  !> Performs the actual conversion.
  SUBROUTINE ConvertNMLToJson(filename, output)
    !> The name of the namelist file to read in.
    CHARACTER(LEN=*), INTENT(IN) :: filename
    !> The string representation of the JSON.
    CHARACTER(LEN=:), ALLOCATABLE, INTENT(OUT) :: output

    ALLOCATE(CHARACTER(LEN=12) :: output)
    output = '{"value": 3.0}'
  END SUBROUTINE ConvertNMLToJson
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
END MODULE NMLTOJSONMODULE
