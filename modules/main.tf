module "ec2_instance" {
  source            = "./modules/ec2-instance"
  instance_type     = var.instance_type
  key_pair_name     = var.key_pair_name
  subnet_id         = var.subnet_id
  security_group_ids = var.security_group_ids
  instance_name     = var.instance_name
  environment       = var.environment
}




