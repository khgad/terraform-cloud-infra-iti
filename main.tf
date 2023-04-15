module "network" {
  source = "./network"

  cidr = var.CIDR
  company_name = var.COMPANY_NAME
  pub_sub_1 = var.PUBLIC_SUB_1
  pub_sub_2 = var.PUBLIC_SUB_2
  pvt_sub_1 = var.PRIVATE_SUB_1
  pvt_sub_2 = var.PRIVATE_SUB_2
  region = var.REGION
  az_1 = var.AZ_1
  az_2 = var.AZ_2
}

module "security" {
  source = "./security"

  vpc_id = module.network.vpc_id
  vpc_cider = module.network.vpc_cider
}

module "instances" {
  source = "./instances"

  pub_sub_1_id = module.network.pub_sub_1_id
  pub_sub_2_id = module.network.pub_sub_2_id
  pvt_sub_1_id = module.network.pvt_sub_1_id
  pvt_sub_2_id = module.network.pvt_sub_2_id

  private_key = module.security.private_key
  key_name = module.security.key_name
  sg-ssh-id = module.security.sg-ssh-id
  sg-vpc-id = module.security.sg-vpc-id

  instance_type = var.INSTANCE_TYPE
  ami_image = var.AMI_IMAGE
}

module "db" {
  source = "./DB"

  pvt_sub_1_id = module.network.pvt_sub_1_id
  pvt_sub_2_id = module.network.pvt_sub_2_id
}