terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
<<<<<<< HEAD:modules/terraform/provider.tf

provider "aws" {
  region = var.region
}
# main.tf


# Create a resource (an EC2 instance in this case)
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with your preferred AMI ID
=======
# Specify the provider
provider "aws" {
  region = "us-east-1"
}

# Create a resource (an EC2 instance in this case)
resource "aws_instance" "example" {
  ami           =    "ami-0c55b159cbfafe1f0"  # Replace with your preferred AMI ID
>>>>>>> fecd32694eae0c79155d0df99788dbbdfa046bd3:modules/terraform/modules/provider.tf
  instance_type = "t2.micro"

  tags = {
    Name = "SHALI-POD-B-JAN2025"
  }
}
