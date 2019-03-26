from sys import argv
from json import load

if __name__ == "__main__":
    with open(argv[1]) as ifile:
        dict1 = load(ifile)
    with open(argv[2]) as ifile:
        dict2 = load(ifile)

    if dict1 != dict2:
        raise ValueError("Two dictionaries are not equal")
