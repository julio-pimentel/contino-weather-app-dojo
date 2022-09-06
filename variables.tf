# S3 bucket values 
variable "bucket" {
  type        = string
  description = "Specifies the name of an S3 Bucket"
  default     = "weather-app-infra-pimentel-bucket"
}

variable "tags" {
  type        = map(string)
  description = "Use tags to identify project resources"
  default     = {}
}

# Region and AZs 
variable "aws_region" {
  default = "us-east-1"
}

variable "az_a" {
  type = string
  default = "us-east-1a"
}

variable "az_b" {
  type = string
  default = "us-east-1b"
}

variable "az_c" {
  type = string
  default = "us-east-1c"
}

#VPC
variable "vpc_cidr" {
  description = "VPC CIDR"
  type = string
  default = "10.0.1.0/24"
}

variable "vpc_name" {
  description = "Name to set on the VPC"
  type = string
  default = "weather-app-pimentel-vpc"
}

#Private subnet values 
variable "priv_sub_name_1" {
  type = string
  default = "weather-app-pimentel-privateA"
}

variable "priv_sub_name_2" {
  type = string
  default = "weather-app-pimentel-privateB"
}

variable "priv_sub_name_3" {
  type = string
  default = "weather-app-pimentel-privateC"
}

variable "priv_sub_cidr_1" {
  type = string
  default = "10.0.1.0/26"
}

variable "priv_sub_cidr_2" {
  type = string
  default = "10.0.1.64/26"
}

variable "priv_sub_cidr_3" {
  type = string
  default = "10.0.1.128/26"
}

#Public subnet values 
variable "pub_sub_name_1" {
  type = string
  default = "weather-app-pimentel-publicA"
}

variable "pub_sub_name_2" {
  type = string
  default = "weather-app-pimentel-publicB"
}

variable "pub_sub_name_3" {
  type = string
  default = "weather-app-pimentel-publicC"
}

variable "pub_sub_cidr_1" {
  type = string
  default = "10.0.1.192/28"
}

variable "pub_sub_cidr_2" {
  type = string
  default = "10.0.1.208/28"
}

variable "pub_sub_cidr_3" {
  type = string
  default = "10.0.1.224/28"
}

#Internet Gateway
variable "igw_name" {
  type = string
  default = "weather-app-pimentel-igw"
}

# Public Route Tables 
variable "pub_rt_name_1" {
  type = string
  default = "weather-app-pimentel-public-rt-1"
}

variable "pub_rt_name_2" {
  type = string
  default = "weather-app-pimentel-public-rt-2"
}

variable "pub_rt_name_3" {
  type = string
  default = "weather-app-pimentel-public-rt-3"
}

# Private Route Tables 
variable "priv_rt_name_1" {
  type = string
  default = "weather-app-pimentel-private-rt-1"
}

variable "priv_rt_name_2" {
  type = string
  default = "weather-app-pimentel-private-rt-2"
}

variable "priv_rt_name_3" {
  type = string
  default = "weather-app-pimentel-private-rt-3"
}

#Security group names
variable "alb_sg_name" {
  default = "weather-app-pimentel-alb-sg"
}

variable "ecs_tasks_sg_name" {
  default = "weather-app-pimentel-ecs-sg"
}

#ECS Tasks
variable "container_port" {
  description = "Port for Docker containers"
  default = 3000
}

# ECR Repo
variable "iam_role_name" {
   default = "julio-pimentel-EcsExecutionRole"
}

variable "iam_policy_name" {
   default = "julio-pimentel-iam_policy"
}

variable "ecr_repo_name" {
  default = "julio-pimentel-node-weather-app"
}

#S3 Gateway Endpoint 
variable "vpc_endpoint_name" {
  default = "weather-app-pimentel-s3-gateway"
}

#EIP
variable "eip_name_1" {
  default = "weather-app-pimentel-eip-1"
}

variable "eip_name_2" {
  default = "weather-app-pimentel-eip-2"
}

variable "eip_name_3" {
  default = "weather-app-pimentel-eip-3"
}