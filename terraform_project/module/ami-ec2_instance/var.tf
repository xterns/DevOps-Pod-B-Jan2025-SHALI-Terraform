variable "ami_owner_id" {
  description = "058264206227"
  type        = string
}

variable "ami_name_pattern" {
  description = "Shali-packer-ami-*"
  type        = string
}

variable "ami_tags" {
  description = "Tags used to filter AMIs"
  type        = map(string)
  default     = {}
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "The type of EC2 instance (e.g., t2.micro)"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "The subnet ID where the EC2 instances will be launched"
  type        = string
}

variable "key_name" {
  description = "The name of the key pair to associate with the instances"
  type        = string
}

variable "name_prefix" {
  description = "Prefix for naming resources"
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to resources"
  type        = map(string)
  default     = {}
}