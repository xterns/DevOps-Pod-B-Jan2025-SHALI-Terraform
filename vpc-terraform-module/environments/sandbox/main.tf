module "vpc" {
  source      = "../../modules/vpc"
  providers   = { aws = aws.nonprod }
  cidr_block  = var.cidr_block
  environment = var.environment
  pod         = var.pod
  monthYear   = var.monthYear
}
