output "s3_bucket_name" {
  description = "shaliprojectbucket"
  value       = aws_s3_bucket.terraform_state.bucket
}

output "s3_bucket_arn" {
  description = "arn:aws:s3:::shaliprojectbucket"
  value       = aws_s3_bucket.terraform_state.arn
}

output "dynamodb_table_name" {
  description = "shali_project_bucket_db"
  value       = var.enable_dynamodb_lock ? aws_dynamodb_table.terraform_locks[0].name : null
}