import sys
def input(statement):
    print(statement)
    colour = sys.argv[1]
    print(colour)
    return(colour)

fav = input("What is your favourite colour?")

print("My favourite colour is", fav)
