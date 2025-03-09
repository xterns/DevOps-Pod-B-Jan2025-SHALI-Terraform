terraform {
  backend "s3" {
    bucket = "terraformtfstate-production-bucket"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}