terraform {
  backend "s3" {
    bucket = "darshan-test-bucket-0909838223"
    key    = "darshan/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "terraform-lock"
  }
}
