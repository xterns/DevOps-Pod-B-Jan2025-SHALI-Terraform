variable "aws_profile" {
  description = "AWS CLI profile name (optional)"
  type        = string
  default     = "default"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  # default     = "t2.micro"
}

variable "key_pair_name" {
  description = "Key pair name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "security_group_ids" {
  description = "List of security groups"
  type        = list(string)
}

variable "instance_name" {
  description = "Instance Name"
  type        = string
}

variable "environment" {
  description = "Deployment Environment"
  type        = string
}

# variable "aws_region" {
#   description = "AWS region for resources"
#   type        = string
#   default     = "us-east-1"
# }

