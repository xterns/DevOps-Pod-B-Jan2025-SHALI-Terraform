variable "ami_name_pattern" {
  description = "The name pattern of the AMI created with Packer (e.g., 'my-packer-ami-*')"
  type        = string
}

variable "ami_owner" {
  description = "The owner of the AMI (e.g., 'self' for your AWS account)"
  type        = string
  default     = "self"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch (e.g., 't2.micro')"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "The name tag for the EC2 instance"
  type        = string
}

variable "tags" {
  description = "Additional tags to apply to the EC2 instance"
  type        = map(string)
  default     = {}
}