output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.ec2.id
}

output "public_ip" {
  description = "Public IP of the instance"
  value       = aws_instance.ec2.public_ip
}
