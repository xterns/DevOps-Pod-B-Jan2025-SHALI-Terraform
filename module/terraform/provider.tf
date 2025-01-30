terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
# Specify the provider
provider "aws" {
  region = "us-east-1"
}

# Create a resource (an EC2 instance in this case)
resource "aws_instance" "Shali" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with your preferred AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "SHALI-POD-B-JAN2025"
  }
}
