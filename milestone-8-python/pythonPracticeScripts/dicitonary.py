instance_info = [
    {
        "instance_type": "t2.micro",
        "ami": "ami-0abcdef1234567890",
        "type" : "t2.micro"
    },
    {
        "instance_type": "t2.small",
        "ami": "ami-0abcdef1234567890",
        "type" : "t2.small"
    },
    {
        "instance_type": "t2.large",
        "ami": "ami-0abcdef1234567890",
        "type" : "t2.large"
    }

]
print(instance_info[1]["instance_type"])
