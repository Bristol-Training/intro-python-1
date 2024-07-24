import sys

def input(statement):

    print(statement + sys.argv[1])

    return(sys.argv[1])

year = int(input("Enter a year: "))

if year % 100 == 0:
    print(year, "is not a leap year")
elif year % 4 == 0:
    print(year, "is a leap year")
else:
    print(year, "is not a leap year")
    
