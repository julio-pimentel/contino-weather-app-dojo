output "bucket_name" {
  description = "The name of the bucket"
  value       = ["${module.s3_bucket.s3_bucket_name}"] 
}

output "bucket_name_arn" {
  description = "The name of the bucket"
  value       = ["${module.s3_bucket.s3_bucket_name_arn}"]
}

output "vpc_id" {
  description = "VPC ID"
  value = module.vpc.vpc_id
}

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
/*
output "alb_dns_name" {
  description = "ALB DNS name"
  value = module.alb.alb_dns_name
}
*/