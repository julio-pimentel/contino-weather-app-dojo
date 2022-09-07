module "s3_bucket" {
  source = "./modules/s3"
  bucket = var.bucket

  tags = var.tags
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  igw_name = var.igw_name
  vpc_endpoint_name = var.vpc_endpoint_name
  aws_region = var.aws_region
  az_a = var.az_a
  az_b = var.az_b
  az_c = var.az_c

  priv_sub_name_a = var.priv_sub_name_a
  priv_sub_name_b = var.priv_sub_name_b
  priv_sub_name_c = var.priv_sub_name_c
  priv_sub_cidr_a = var.priv_sub_cidr_a
  priv_sub_cidr_b = var.priv_sub_cidr_b
  priv_sub_cidr_c = var.priv_sub_cidr_c
  priv_rt_name_a = var.priv_rt_name_a
  priv_rt_name_b = var.priv_rt_name_b
  priv_rt_name_c = var.priv_rt_name_c
 
  pub_sub_name_a = var.pub_sub_name_a
  pub_sub_name_b = var.pub_sub_name_b
  pub_sub_name_c = var.pub_sub_name_c
  pub_sub_cidr_a = var.pub_sub_cidr_a
  pub_sub_cidr_b = var.pub_sub_cidr_b
  pub_sub_cidr_c = var.pub_sub_cidr_c
  pub_rt_name_a = var.pub_rt_name_a
  pub_rt_name_b = var.pub_rt_name_b
  pub_rt_name_c = var.pub_rt_name_c

  eip_name_a = var.eip_name_a
  eip_name_b = var.eip_name_b
  eip_name_c = var.eip_name_c
}

module "sg" {
  source = "./modules/security_group"

  vpc_id = module.vpc.vpc_id
  lb_sg_name = var.lb_sg_name
  ecs_tasks_sg_name = var.ecs_tasks_sg_name
  container_port = var.container_port

  depends_on = [module.vpc]
}

module "ecr" {
  source = "./modules/ecr"

  ecr_repo_name = var.ecr_repo_name
  iam_role_name = var.iam_role_name
  iam_policy_name = var.iam_policy_name
}