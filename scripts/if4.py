import sys

def input(statement):

    print(statement + sys.argv[1])

    return(sys.argv[1])
    

my_number = int(input("Enter a number: "))

if my_number == 100:
    print(my_number, "== 100")

if my_number == 74:
    print(my_number, "== 74")
