output "s3_bucket_name" {
  description = "shali-project-trials"
  value       = aws_s3_bucket.terraform_state.bucket
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.terraform_state.arn
}

output "dynamodb_table_name" {
  description = "shali-project-trials (if enabled)"
  value       = var.enable_dynamodb_lock ? aws_dynamodb_table.terraform_locks[0].name : null
}