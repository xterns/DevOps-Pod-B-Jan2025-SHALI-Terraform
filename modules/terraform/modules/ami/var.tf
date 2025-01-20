variable "region" {
  description = "The AWS region to look up the AMI"
  type        = string
}

variable "ami_name_pattern" {
  description = "Pattern to filter AMI names (e.g., 'my-packer-ami-*')"
  type        = string
}

variable "owner_id" {
  description = "The AWS account ID that owns the AMI"
  type        = string
}
