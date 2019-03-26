from sys import argv
from f90nml import read
from json import dumps

if __name__ == "__main__":
    indict = read(argv[1])
    outstr = dumps(indict)
