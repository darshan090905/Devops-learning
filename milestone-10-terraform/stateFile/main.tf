provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "statefileTest" {
    ami           = "ami-068c0051b15cdb816" # replace this
    instance_type = "t2.micro"


    tags = {
    Name = "StateFileTestInstance"
  }
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "darshan-test-bucket-0909838223"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_dynamodb_table" "terraform-lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
