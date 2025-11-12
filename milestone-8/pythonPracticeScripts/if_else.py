
# if else and elif statements
print("Welcome to AWS")
print("We have following instance types")
print("1. t2.micro")
print("2. t2.small")    
print("3. t2.medium")

type = input("Enter a type of instance you want to create in  aws:")
if type == "t2.micro":
    print("You have selected t2.micro instance which is eligible for free tier")
elif type == "t2.small":
    print("you have selected t2.small it coast you $0.023 per hour")
elif type == "t2.medium":
    print("you have selected t2.medium it coast you $0.0464 per hour")
else:
    print("you have selected an invalid instance type")

print("Thank you for using our services")
