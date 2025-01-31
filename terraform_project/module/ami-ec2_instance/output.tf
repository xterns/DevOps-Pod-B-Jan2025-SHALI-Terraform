output "instance_ids" {
  description = "List of EC2 instance IDs"
  value       = aws_instance.ec2_instance[*].id
}

output "instance_public_ips" {
  description = "List of public IPs of the EC2 instances"
  value       = aws_instance.ec2_instance[*].public_ip
}

output "instance_private_ips" {
  description = "List of private IPs of the EC2 instances"
  value       = aws_instance.ec2_instance[*].private_ip
}

output "ami_id" {
  description = "The ID of the AMI used for the EC2 instances"
  value       = data.aws_ami.packer_ami.id
}