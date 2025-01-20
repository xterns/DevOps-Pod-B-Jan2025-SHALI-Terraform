terraform {
  backend "s3" {
    bucket         = "devops-pod-b-jan2025-shali-terraform-s3" # Replace with your bucket name
    key            = "terraform/terraform.tfstate"             # Replace with a custom path
    region         = "us-east-1"                               # Replace with your bucket region
    dynamodb_table = "devops-pod-b-jan2025-shali-terraform-db" # Replace with your DynamoDB table name
    encrypt        = true                                      # Enable encryption for added security
  }
}