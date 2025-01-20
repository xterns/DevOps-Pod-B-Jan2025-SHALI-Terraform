terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}
# main.tf

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> fc9ebbe (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
# Specify the provider
provider "aws" {
  region = "us-west-2"
}
<<<<<<< HEAD
=======
=======
>>>>>>> a405180 (feat: Set up Terraform project structure with S3 backend, CI/CD, documentation, and initial README updates)
>>>>>>> fc9ebbe (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)

# Create a resource (an EC2 instance in this case)
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your preferred AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "SHALI-POD-B-JAN2025"
  }
}
