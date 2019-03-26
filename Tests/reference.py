from sys import argv
from f90nml import read
from json import dumps

if __name__ == "__main__":
    indict = read(argv[1])
    outstr = dumps(indict)
    with open(argv[2], 'w') as ofile:
        ofile.write(outstr)
