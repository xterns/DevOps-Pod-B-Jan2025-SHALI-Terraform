output "ami_id" {
  description = "The ID of the latest AMI created by Packer"
  value       = data.aws_ami.latest.id
}
