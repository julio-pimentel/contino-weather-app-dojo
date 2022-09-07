#S3 bucket
output "bucket_name" {
  description = "S3 bucket name"
  value       = ["${module.s3_bucket.s3_bucket_name}"] 
}

output "bucket_name_arn" {
  description = "S3 bucket ARN"
  value       = ["${module.s3_bucket.s3_bucket_name_arn}"]
}


#VPC
output "vpc_id" {
  description = "VPC ID"
  value = module.vpc.vpc_id
}

#Private subnet
output "priv_cidr_id_a" {
  value = module.vpc.priv_cidr_id_a
}

output "priv_cidr_id_b" {
  value = module.vpc.priv_cidr_id_b
}

output "priv_cidr_id_c" {
  value = module.vpc.priv_cidr_id_c
}

#Public subnet
output "pub_cidr_id_a" {
  value = module.vpc.pub_cidr_id_a
}

output "pub_cidr_id_b" {
  value = module.vpc.pub_cidr_id_b
}

output "pub_cidr_id_c" {
  value = module.vpc.pub_cidr_id_c
}

# Security group ID
output "alb_sg_id" {
  description = "ALB SG ID"
  value       = module.sg.lb_sg_id
}

output "ecs_tasks_sg_id" {
  description = "ECS tasks SG ID"
  value       = module.sg.ecs_tasks_sg_id
}

output "ecr_repository_url" {
    value = module.ecr.ecr_repository_url
}

output "ecs_task_execution_role_arn" {
    value = module.ecr.ecs_task_execution_role_arn
}