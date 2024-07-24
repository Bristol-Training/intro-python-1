import sys

def input(statement):

    print(statement + sys.argv[1])

    return(sys.argv[1])


my_number = int(input("Enter a number: "))

if my_number > 100:
    print(my_number, "is large")
else:
    print(my_number, "is not large")
    