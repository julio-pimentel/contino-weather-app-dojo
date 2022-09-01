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
}

module "sg" {
  source = "./modules/sg"

  vpc_id = module.vpc.vpc_id
  alb_sg_name = var.alb_sg_name
  ecs_tasks_sg_name = var.ecs_tasks_sg_name
  container_port = var.container_port

  depends_on = [module.vpc]
}

module "alb" {
  source = "./modules/alb"

  pub_cidr_id_1 = module.vpc.pub_cidr_id_1
  pub_cidr_id_2 = module.vpc.pub_cidr_id_2
  pub_cidr_id_3 = module.vpc.pub_cidr_id_3
  alb_name = var.alb_name
  alb_sg_id = module.sg.alb_sg_id
  vpc_id = module.vpc.vpc_id

  depends_on = [module.vpc, module.sg]
}


module "ecr" {
  source = "./modules/ecr"

  ecr_repo_name = var.ecr_repo_name
  iam_role_name = var.iam_role_name
  iam_policy_name = var.iam_policy_name
}


/*
module "asg" {
  source = "./modules/asg"

  instance_type = var.instance_type
  pub_cidr_id_1 = module.vpc.pub_cidr_id_1
  pub_cidr_id_2 = module.vpc.pub_cidr_id_2
  pub_cidr_id_3 = module.vpc.pub_cidr_id_3
  asg_desired = var.asg_desired
  asg_min = var.asg_min
  asg_max = var.asg_max
  alb_tg_arn = module.alb.alb_tg_arn
  alb_sg_id = module.sg.alb_sg_id

  depends_on = [module.vpc, module.sg]
}
*/