terraform {
  backend "s3" {
    bucket         = "shali-project-trials" # Replace with your bucket name
    key            = "terraform/terraform.tfstate"  # Replace with a custom path
    region         = "us-east-1"                    # Replace with your bucket region
    dynamodb_table = "shali-project-trials" # Replace with your DynamoDB table name
    encrypt        = true                           # Enable encryption for added security

  }
}


  


