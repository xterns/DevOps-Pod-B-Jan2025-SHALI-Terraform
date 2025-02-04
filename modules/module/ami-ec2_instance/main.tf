# # Retrieve the latest AMI created with Packer
# data "aws_ami" "packer_ami" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = [var.ami_name_pattern]  # AMI name pattern (e.g., "my-packer-ami-*")
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = [var.ami_owner]  # Typically "self" for AMIs owned by your account
# }

# # Provision an EC2 instance using the retrieved AMI
# resource "aws_instance" "ec2_instance" {
#   ami           = data.aws_ami.packer_ami.id
#   instance_type = var.instance_type

#   tags = merge(
#     var.tags,
#     {
#       Name = var.instance_name
#     }
#   )
# }