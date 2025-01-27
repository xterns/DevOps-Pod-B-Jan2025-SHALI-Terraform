<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
terraform {
  backend "s3" {
    bucket         = "devops-pod-b-jan2025-shali-terraform-s3" # Replace with your bucket name
    key            = "terraform/terraform.tfstate"  # Replace with a custom path
    region         = "us-east-1"                    # Replace with your bucket region
    dynamodb_table = "devops-pod-b-jan2025-shali-terraform-db" # Replace with your DynamoDB table name
    encrypt        = true                           # Enable encryption for added security
  }
}


>>>>>>> a405180 (feat: Set up Terraform project structure with S3 backend, CI/CD, documentation, and initial README updates)
>>>>>>> fc9ebbe (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
# creating VPC
module "VPC" {
  source                              = "./modules/VPC"
  region                              = var.region
  vpc_cidr                            = var.vpc_cidr
  enable_dns_support                  = var.enable_dns_support
  enable_dns_hostnames                = var.enable_dns_hostnames
  enable_classiclink                  = var.enable_classiclink
  preferred_number_of_public_subnets  = var.preferred_number_of_public_subnets
  preferred_number_of_private_subnets = var.preferred_number_of_private_subnets
  private_subnets                     = [for i in range(1, 8, 2) : cidrsubnet(var.vpc_cidr, 8, i)]
  public_subnets                      = [for i in range(2, 5, 2) : cidrsubnet(var.vpc_cidr, 8, i)]
}

#Module for Application Load balancer, this will create Extenal Load balancer and internal load balancer
module "ALB" {
  source             = "./modules/ALB"
  extLB-name         = "SHALI-ext-lb"
  intLB-name         = "SHALI-int-lb"
  vpc_id             = module.VPC.vpc_id
  public-sg          = module.SECGRP.ext-alb-sg
  private-sg         = module.SECGRP.int-alb-sg
  pub-sub-1          = module.VPC.public_subnets-1
  pub-sub-2          = module.VPC.public_subnets-2
  priv-sub-1         = module.VPC.private_subnets-1
  priv-sub-2         = module.VPC.private_subnets-2
  load_balancer_type = "application"
  ip_address_type    = "ipv4"
}

module "SECGRP" {
  source = "./modules/SECGRP"
  vpc_id = module.VPC.vpc_id
}


module "ASG" {
  source            = "./modules/ASG"
  ami-web           = var.ami-web
  ami-bastion       = var.ami-bastion
  ami-nginx         = var.ami-nginx
  desired_capacity  = 1
  min_size          = 1
  max_size          = 1
  web-sg            = [module.SECGRP.web-sg]
  bastion-sg        = [module.SECGRP.bastion-sg]
  nginx-sg          = [module.SECGRP.nginx-sg]
  wordpress-alb-tgt = module.ALB.wordpress-tgt
  nginx-alb-tgt     = module.ALB.nginx-tgt
  tooling-alb-tgt   = module.ALB.tooling-tgt
  instance_profile  = module.VPC.instance_profile
  public_subnets    = [module.VPC.public_subnets-1, module.VPC.public_subnets-2]
  private_subnets   = [module.VPC.private_subnets-1, module.VPC.private_subnets-2]
  keypair           = var.keypair

}

# Module for Elastic Filesystem; this module will creat elastic file system isn the webservers availablity
# zone and allow traffic fro the webservers

module "EFS" {
  source       = "./modules/EFS"
  efs-subnet-1 = module.VPC.private_subnets-1
  efs-subnet-2 = module.VPC.private_subnets-2
  efs-sg       = [module.SECGRP.datalayer-sg]
  account_no   = var.account_no
}

# RDS module; this module will create the RDS instance in the private subnet

module "RDS" {
  source          = "./modules/RDS"
  db-password     = var.master-password
  db-username     = var.master-username
  db-sg           = [module.SECGRP.datalayer-sg]
  private_subnets = [module.VPC.private_subnets-3, module.VPC.private_subnets-4]
}

# The Module creates instances for jenkins, sonarqube abd jfrog
module "compute" {
  source          = "./modules/compute"
  ami-jenkins     = var.ami-bastion
  ami-sonar       = var.ami-sonar
  ami-jfrog       = var.ami-bastion
  subnets-compute = module.VPC.public_subnets-1
  sg-compute      = [module.SECGRP.compute-sg]
  keypair         = var.keypair
}