output "public_ip-address" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.terraform-testing.public_ip
  
}