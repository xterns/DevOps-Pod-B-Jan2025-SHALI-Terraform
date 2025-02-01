terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  # ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}


# Create a resource (an EC2 instance in this case)
resource "aws_instance" "Shali" {
  # ami           = "ami-0c55b159cbfafe1f0" # Replace with your preferred AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "SHALI-POD-B-JAN2025"
  }
}
