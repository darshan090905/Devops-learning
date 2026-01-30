import sys

def add(num1,num2): # addition function
    a = num1 + num2
    return a

num1 = float(sys.argv[1]) #num1 argument

num2 = float(sys.argv[2]) #num2 argument

result = add(num1,num2) #function call

print(f"Addition of  {num1} and {num2} is: {result}")
