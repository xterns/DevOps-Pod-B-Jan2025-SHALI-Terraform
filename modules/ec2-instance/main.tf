provider "aws" {
    region = "us-east-1"
}

data "aws_ami" "latest_packer" {
  most_recent = true
  owners      = ["self"] # Change to AWS account ID if needed

  filter {
    name   = "name"
    values = ["packer-build-*"] # Assumes Packer AMIs follow this naming convention
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}

resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.latest_packer.id
  instance_type          = var.instance_type
  key_name               = var.key_pair_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = var.instance_name
    Environment = var.environment
  }
}
