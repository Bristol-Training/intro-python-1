import sys

def input(statement):

    print(statement + sys.argv[1])

    return(sys.argv[1])

year = int(input("Enter a year: "))

if year % 4 == 0:
    print(year, "is a leap year")
