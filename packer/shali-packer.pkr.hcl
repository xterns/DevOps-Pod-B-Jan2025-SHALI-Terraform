packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

variable "aws_region" {
  default = "us-east-1"
}

variable "source_ami" {
  default = "ami-0e001c9271cf7f3b9"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ssh_username" {
  default = "ubuntu"
}

locals {
  timestamp = formatdate("YYYYMMDDHHmmss", timestamp())
  ami_name  = "packer-cis-hardened-ami-${local.timestamp}"
}

source "amazon-ebs" "shali_project" {
  region                      = var.aws_region
  source_ami                  = var.source_ami
  instance_type               = var.instance_type
  ssh_username                = var.ssh_username
  ami_name                    = local.ami_name
  ami_description             = "A CIS hardened AMI created with Packer"
  associate_public_ip_address = true

  tags = {
    Name      = "packer-cis-hardened-ami"
    CreatedBy = "packer"
  }

  run_tags = {
    Name = "packer-builder"
  }
}

build {
  name    = "pod-B-jan2025"
  sources = ["source.amazon-ebs.shali_project"]

  provisioner "file" {
    source      = "./scripts/001-critical-standards.sh"
    destination = "/tmp/001-critical-standards.sh"
  }

  provisioner "shell" {
    inline = [
      "sleep 30",
      "chmod +x /tmp/001-critical-standards.sh",
      "sudo /tmp/001-critical-standards.sh",
    ]
  }

  provisioner "file" {
    source      = "./scripts/002-critical-standards.sh"
    destination = "/tmp/002-critical-standards.sh"
  }

  provisioner "shell" {
    inline = [
      "if [ -f /tmp/002-critical-standards.sh ]; then",
      "  chmod +x /tmp/002-critical-standards.sh",
      "  sudo /tmp/002-critical-standards.sh || exit 1",
      "else",
      "  echo 'Error: /tmp/002-critical-standards.sh not found'; exit 1",
      "fi"
    ]
  }

}
