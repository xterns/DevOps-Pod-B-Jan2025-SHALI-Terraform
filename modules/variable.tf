variable "instance_type" {
  description = "EC2 instance type"
  type        = string
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
