output "instance_id" {
  value = module.ec2_instance.instance_id
}

output "public_ip" {
  value = module.ec2_instance.public_ip
}


# output "instance_id" {
#   description = "The ID of the EC2 instance"
#   value       = aws_instance.example.id
# }

