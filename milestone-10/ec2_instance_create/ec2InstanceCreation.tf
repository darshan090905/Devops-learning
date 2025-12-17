provider "aws" {
  region = "us-east-1"

}

resource "aws_instance" "test_instance" {
  ami           = "ami-068c0051b15cdb816"
  instance_type = "t2.micro"
  subnet_id = "subnet-0815e9b4dcea2e26f"
  key_name = "aws-kp"

  tags = {
    Name = "TestInstance"
  }
  
}