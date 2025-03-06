variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_pair_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance in"
  type        = string
}

variable "security_group_ids" {
  description = "List of security groups"
  type        = list(string)
}

variable "instance_name" {
  description = "Tag for the instance name"
  type        = string
}

variable "environment" {
  description = "Deployment environment (sandbox, staging, production)"
  type        = string
}
