# module for creating VPC
module "VPC" {
  source               = "./module/VPC"
  region               = "us-east-1"
  cidr_block           = "10.0.0.0/16"
  name                 = "example"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
  availability_zones   = ["us-east-1a", "us-east-1b"]
  tags = {
    Environment = "Production"
    Team        = "Shali"
  }
}


#Module for Application Load balancer, this will create Extenal Load balancer and internal load balancer
module "ALB" {
  source             = "./module/ALB"
  extLB-name         = "SHALI-ext-lb"
  intLB-name         = "SHALI-int-lb"
  VPC_id             = module.VPC.VPC_id
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
  source = "./module/SECGRP"
  VPC_id = module.VPC.VPC_id
}


module "ASG" {
  source            = "./module/ASG"
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
  source       = "./module/EFS"
  efs-subnet-1 = module.VPC.private_subnets-1
  efs-subnet-2 = module.VPC.private_subnets-2
  efs-sg       = [module.SECGRP.datalayer-sg]
  account_no   = var.account_no
}

# RDS module; this module will create the RDS instance in the private subnet

module "RDS" {
  source          = "./module/RDS"
  db-password     = var.master-password
  db-username     = var.master-username
  db-sg           = [module.SECGRP.datalayer-sg]
  private_subnets = [module.VPC.private_subnets-3, module.VPC.private_subnets-4]
}

# The Module creates instances for jenkins, sonarqube abd jfrog
module "compute" {
  source          = "./module/compute"
  ami-jenkins     = var.ami-bastion
  ami-sonar       = var.ami-sonar
  ami-jfrog       = var.ami-bastion
  subnets-compute = module.VPC.public_subnets-1
  sg-compute      = [module.SECGRP.compute-sg]
  keypair         = var.keypair
}

module "packer_ami" {
  source           = "./module/ami"
  region           = "us-east-1"
  ami_name_pattern = "my-packer-ami-*"
  owner_id         = "058264206227" # Replace with your AWS account ID
}

resource "aws_instance" "example" {
  ami           = module.packer_ami.ami_id
  instance_type = "t2.micro"

  tags = {
    Name = "Shali_Instance"
  }
}