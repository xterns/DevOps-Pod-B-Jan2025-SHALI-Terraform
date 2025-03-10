provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source            = "../modules/ec2-instance"
  instance_type     = "t2.micro"
  key_pair_name     = "shali-terraform"
  subnet_id         = "subnet-01de4888ecd9bcc40"
  security_group_ids = ["sg-0a1a6e9989527f5a0"]
  instance_name     = "production-instance"
  environment       = "production"
}

