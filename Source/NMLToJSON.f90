!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!> A module for converting Fortran namelists to JSON.
MODULE NMLTOJSON
  IMPLICIT NONE
  PUBLIC :: ConvertNMLToJson
CONTAINS
  !> Performs the actual conversion.
  SUBROUTINE ConvertNMLToJson(filename, output)
    !> The name of the namelist file to read in.
    CHARACTER(LEN=*), INTENT(IN) :: filename
    !> The string representation of the JSON.
    CHARACTER(LEN=*), ALLOCATABLE, INTENT(OUT) :: output
  END SUBROUTINE ConvertNMLToJson
END MODULE NMLTOJSON
