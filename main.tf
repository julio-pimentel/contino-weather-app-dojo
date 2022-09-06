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
  az_a = var.az_a
  az_b = var.az_b
  az_c = var.az_c

  priv_sub_name_1 = var.priv_sub_name_1
  priv_sub_name_2 = var.priv_sub_name_2
  priv_sub_name_3 = var.priv_sub_name_3
  priv_sub_cidr_1 = var.priv_sub_cidr_1
  priv_sub_cidr_2 = var.priv_sub_cidr_2
  priv_sub_cidr_3 = var.priv_sub_cidr_3
  priv_rt_name_1 = var.priv_rt_name_1
  priv_rt_name_2 = var.priv_rt_name_2
  priv_rt_name_3 = var.priv_rt_name_3
 
  pub_sub_name_1 = var.pub_sub_name_1
  pub_sub_name_2 = var.pub_sub_name_2
  pub_sub_name_3 = var.pub_sub_name_3
  pub_sub_cidr_1 = var.pub_sub_cidr_1
  pub_sub_cidr_2 = var.pub_sub_cidr_2
  pub_sub_cidr_3 = var.pub_sub_cidr_3
  pub_rt_name_1 = var.pub_rt_name_1
  pub_rt_name_2 = var.pub_rt_name_2
  pub_rt_name_3 = var.pub_rt_name_3

  eip_name_1 = var.eip_name_1
  eip_name_2 = var.eip_name_2
  eip_name_3 = var.eip_name_3
}

module "sg" {
  source = "./modules/sg"

  vpc_id = module.vpc.vpc_id
  alb_sg_name = var.alb_sg_name
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