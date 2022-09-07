# S3 bucket values 
variable "bucket" {
  type        = string
  description = "S3 bucket name - must be globally unique"
  default     = "weather-app-infra-pimentel-bucket"
}

variable "tags" {
  type        = map(string)
  description = "Use tags to identify project resources"
  default     = {}
}

#VPC
variable "vpc_cidr" {
  description = "IPv4 CIDR block and block size"
  type = string
  default = "10.0.1.0/24"
}

variable "vpc_name" {
  description = "VPC name"
  type = string
  default = "weather-app-pimentel-vpc"
}

#Internet Gateway
variable "igw_name" {
  description = "Internet Gateway name"
  type = string
  default = "weather-app-pimentel-igw"
}

#S3 Gateway Endpoint 
variable "vpc_endpoint_name" {
  description = "VPC endpoint name"
  type = string 
  default = "weather-app-pimentel-s3-gateway"
}

# Region and AZs 
variable "aws_region" {
  description = "Region where the project will be deployed"
  type = string 
  default = "us-east-1"
}

variable "az_a" {
  description = "Availability Zone A"
  type = string
  default = "us-east-1a"
}

variable "az_b" {
  description = "Availability Zone B"
  type = string
  default = "us-east-1b"
}

variable "az_c" {
  description = "Availability Zone C"
  type = string
  default = "us-east-1c"
}

#Private subnet values 
variable "priv_sub_name_a" {
  description = "Private subnet A name"
  type = string
  default = "weather-app-pimentel-privateA"
}

variable "priv_sub_name_b" {
  description = "Private subnet B name"
  type = string
  default = "weather-app-pimentel-privateB"
}

variable "priv_sub_name_c" {
  description = "Private subnet C name"
  type = string
  default = "weather-app-pimentel-privateC"
}

variable "priv_sub_cidr_a" {
  description = "Private subnet A IPv4 CIDR block and block size "
  type = string
  default = "10.0.1.0/26"
}

variable "priv_sub_cidr_b" {
  description = "Private subnet B IPv4 CIDR block and block size "
  type = string
  default = "10.0.1.64/26"
}

variable "priv_sub_cidr_c" {
  description = "Private subnet C IPv4 CIDR block and block size "
  type = string
  default = "10.0.1.128/26"
}

#Public subnet values 
variable "pub_sub_name_a" {
  description = "Public subnet A name"
  type = string
  default = "weather-app-pimentel-publicA"
}

variable "pub_sub_name_b" {
  description = "Public subnet B name"
  type = string
  default = "weather-app-pimentel-publicB"
}

variable "pub_sub_name_c" {
  description = "Public subnet C name"
  type = string
  default = "weather-app-pimentel-publicC"
}

variable "pub_sub_cidr_a" {
  description = "Public subnet A IPv4 CIDR block and block size"
  type = string
  default = "10.0.1.192/28"
}

variable "pub_sub_cidr_b" {
  description = "Public subnet B IPv4 CIDR block and block size"
  type = string
  default = "10.0.1.208/28"
}

variable "pub_sub_cidr_c" {
  description = "Public subnet C IPv4 CIDR block and block size"
  type = string
  default = "10.0.1.224/28"
}

# Private Route Tables 
variable "priv_rt_name_a" {
  description = "Private route table A"
  type = string
  default = "weather-app-pimentel-private-rt-a"
}

variable "priv_rt_name_b" {
  description = "Private route table B"
  type = string
  default = "weather-app-pimentel-private-rt-b"
}

variable "priv_rt_name_c" {
  description = "Private route table C"
  type = string
  default = "weather-app-pimentel-private-rt-c"
}

# Public Route Tables 
variable "pub_rt_name_a" {
  description = "Public route table A"
  type = string
  default = "weather-app-pimentel-public-rt-a"
}

variable "pub_rt_name_b" {
  description = "Public route table B"
  type = string
  default = "weather-app-pimentel-public-rt-b"
}

variable "pub_rt_name_c" {
  description = "Public route table C"
  type = string
  default = "weather-app-pimentel-public-rt-c"
}

#EIP
variable "eip_name_a" {
  description = "Elastic IP address A name"
  type = string
  default = "weather-app-pimentel-eip-a"
}

variable "eip_name_b" {
  description = "Elastic IP address B name"
  type = string
  default = "weather-app-pimentel-eip-b"
}

variable "eip_name_c" {
  description = "Elastic IP address C name"
  type = string
  default = "weather-app-pimentel-eip-c"
}

#Security group names
variable "lb_sg_name" {
  description = "Security group name for Load Balancer"
  type = string
  default = "weather-app-pimentel-lb-sg"
}

variable "ecs_tasks_sg_name" {
  description = "Security group name for ECS Tasks"
  type = string
  default = "weather-app-pimentel-ecs-sg"
}

#ECS Tasks
variable "container_port" {
  description = "Port for Docker containers"
  type = number 
  default = 3000
}

# ECR Repo
variable "ecr_repo_name" {
  description = "ECR repository name"
  type = string
  default = "julio-pimentel-node-weather-app"
}

variable "iam_role_name" {
  description = "ECS Task execution IAM role name"
  type = string
  default = "julio-pimentel-EcsExecutionRole"
}

variable "iam_policy_name" {
  description = "ECS Task execution IAM policy"
  type = string
  default = "julio-pimentel-EcsEcrAccess"
}

# SSM parameter store 
variable "ssm_prefix" {
  default = "Prefix for SSM Parameter Store"
  type = store
  default = "weather-app-pimentel"
}
