terraform {
  backend "s3" {
    bucket = "sandbox-bucket-name"
    key    = "sandbox/terraform.tfstate"
    region = "us-east-1"
  }
}