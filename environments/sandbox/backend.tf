terraform {
  backend "s3" {
    bucket = "terraformtfstate-sandbox-bucket"
    key    = "sandbox/terraform.tfstate"
    region = "us-east-1"
  }
}