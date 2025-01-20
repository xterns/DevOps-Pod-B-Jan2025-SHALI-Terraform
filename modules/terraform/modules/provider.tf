terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
# Specify the provider
provider "aws" {
  region = "us-east-1"
=======
=======
<<<<<<<< HEAD:modules/terraform/provider.tf
>>>>>>> 1e0584b (first commit on this shali project updated)

provider "aws" {
  region = var.region
}
# main.tf

<<<<<<< HEAD
# Specify the provider
provider "aws" {
  region = "us-west-2"
>>>>>>> 23fc829 (Implement Packer to call Shell Scripts for CSI hardening)
=======

# Create a resource (an EC2 instance in this case)
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with your preferred AMI ID
========
# Specify the provider
provider "aws" {
  region = "us-east-1"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
# Specify the provider
provider "aws" {
  region = "us-east-1"
>>>>>>> 1e0584b (first commit on this shali project updated)
}

# Create a resource (an EC2 instance in this case)
resource "aws_instance" "example" {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  ami           = "ami-0c55b159cbfafe1f0" # Replace with your preferred AMI ID
=======
  ami           =    "ami-0c55b159cbfafe1f0"  # Replace with your preferred AMI ID
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your preferred AMI ID
>>>>>>> 23fc829 (Implement Packer to call Shell Scripts for CSI hardening)
=======
  ami           =    "ami-0c55b159cbfafe1f0"  # Replace with your preferred AMI ID
>>>>>>>> 1e0584b (first commit on this shali project updated):modules/terraform/modules/provider.tf
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  ami           =    "ami-0c55b159cbfafe1f0"  # Replace with your preferred AMI ID
>>>>>>> 1e0584b (first commit on this shali project updated)
  instance_type = "t2.micro"

  tags = {
    Name = "SHALI-POD-B-JAN2025"
  }
}
