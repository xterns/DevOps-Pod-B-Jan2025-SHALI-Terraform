output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.ec2_instance.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.ec2_instance.public_ip
}

output "ami_id" {
  description = "The ID of the AMI used for the EC2 instance"
  value       = data.aws_ami.packer_ami.id
}