variable "bucket_name" {
  description = "shali-project-trials"
  type        = string
}

variable "enable_dynamodb_lock" {
  description = "Whether to enable DynamoDB state locking"
  type        = bool
  default     = false
}

variable "dynamodb_table_name" {
  description = "shali-project-trials"
  type        = string
  default     = "shali-project-trials"
}

variable "tags" {
  description = "A map of tags to apply to resources"
  type        = map(string)
  default     = {}
}