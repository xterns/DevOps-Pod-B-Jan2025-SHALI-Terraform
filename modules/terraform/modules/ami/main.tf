provider "aws" {
  region = var.region
}

data "aws_ami" "latest" {
  most_recent = true

  filter {
    name   = "name"
    values = [var.ami_name_pattern]
  }

  filter {
    name   = "tag:CreatedBy"
    values = ["Packer"]
  }

  owners = [var.owner_id] # AWS account ID that owns the AMI
}
