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
  description = "Private subnet A ID"
  value = module.vpc.priv_cidr_id_a
}

output "priv_cidr_id_b" {
  description = "Private subnet B ID"
  value = module.vpc.priv_cidr_id_b
}

output "priv_cidr_id_c" {
  description = "Private subnet C ID"
  value = module.vpc.priv_cidr_id_c
}

#Public subnet
output "pub_cidr_id_a" {
  description = "Public subnet A ID"
  value = module.vpc.pub_cidr_id_a
}

output "pub_cidr_id_b" {
  description = "Public subnet B ID"
  value = module.vpc.pub_cidr_id_b
}

output "pub_cidr_id_c" {
  description = "Public subnet C ID"
  value = module.vpc.pub_cidr_id_c
}

# Security group ID
output "lb_sg_id" {
  description = "Security group for LB ID"
  value       = module.sg.lb_sg_id
}

output "ecs_tasks_sg_id" {
  description = "Security group for ECS Task ID"
  value       = module.sg.ecs_tasks_sg_id
}

#ECR
output "ecr_repository_url" {
  description = "ECR repository URL"
  value = module.ecr.ecr_repository_url
}

output "ecs_task_execution_role_arn" {
  description = "ECS Task execution role ARN"
  value = module.ecr.ecs_task_execution_role_arn
}