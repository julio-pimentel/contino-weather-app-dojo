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

#Public subnet
output "public_subnet_1_id" {
  description = "Public Subnet ID for AZ-a"
  value = module.vpc.pub_cidr_id_1
}

output "public_subnet_2_id" {
  description = "Public Subnet ID for AZ-b"
  value = module.vpc.pub_cidr_id_2
}

output "public_subnet_3_id" {
  description = "Public Subnet ID for AZ-c"
  value = module.vpc.pub_cidr_id_3
}

#Private subnet
output "private_subnet_1_id" {
  description = "Private Subnet ID for AZ-a"
  value = module.vpc.priv_cidr_id_1
}

output "private_subnet_2_id" {
  description = "Private Subnet ID for AZ-b"
  value = module.vpc.priv_cidr_id_2
}

output "private_subnet_3_id" {
  description = "Private Subnet ID for AZ-c"
  value = module.vpc.priv_cidr_id_3
}

output "alb_sg_id" {
  description = "ALB SG ID"
  value       = module.sg.alb_sg_id
}

output "ecs_tasks_sg_id" {
  description = "ECS tasks SG ID"
  value       = module.sg.ecs_tasks_sg_id
}

output "ecr_repository_url" {
    value = module.ecr.ecr_repository_url
}