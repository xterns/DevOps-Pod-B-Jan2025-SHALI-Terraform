terraform {
  backend "s3" {
    bucket = "prod_bucket_name"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}