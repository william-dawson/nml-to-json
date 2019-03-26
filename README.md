# ##############################################################################
# nml-to-json

The purpose of this library is to convert Fortran namelist files to a JSON 
representation in memory. Given some namelist file name, this program reads in 
that file, parses the data, converts it to the JSON format, and returns it
as a string.

Note that this program is not intended for file format conversion. For
that kind of functionality, I recommend using the python library
[F90NML](https://pypi.org/project/f90nml/). It will surely work better. The
unique thing about this library is that it is written in Fortran and
returns a string as a result. This will allow you to easily add this to
any Fortran code, and use it to pass strings to JSON parsing libraries.

## Compilation
