terraform {
  backend "s3" {
    bucket = "terraformtfstate-staging-bucket"
    key    = "staging/terraform.tfstate"
    region = "us-east-1"
  }
}