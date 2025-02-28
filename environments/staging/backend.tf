terraform {
  backend "s3" {
    bucket = "staging-bucket-name"
    key    = "staging/terraform.tfstate"
    region = "us-east-1"
  }
}