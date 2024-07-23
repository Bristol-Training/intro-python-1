import sys
def input(statement):
    user_input = sys.argv[1]
    print(statement + user_input)
    return(user_input)

greeting = "Hello"
name = input("What is your name? ")

print(greeting, name)
