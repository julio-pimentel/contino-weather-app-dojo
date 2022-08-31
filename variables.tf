# S3 bucket values 
variable "bucket" {
  type        = string
  description = "Specifies the name of an S3 Bucket"
  default     = "weather-app-jpimentel-bucket"
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
  default = "vpc-weather-app-pimentel"
}

#Private subnet values 
variable "priv_sub_name_1" {
  type = string
  default = "weather-app-privateA"
}

variable "priv_sub_name_2" {
  type = string
  default = "weather-app-privateB"
}

variable "priv_sub_name_3" {
  type = string
  default = "weather-app-privateC"
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
  default = "weather-app-publicA"
}

variable "pub_sub_name_2" {
  type = string
  default = "weather-app-publicB"
}

variable "pub_sub_name_3" {
  type = string
  default = "weather-app-publicC"
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
  default = "igw-weather-app-pimentel"
}

# Route Tables 
variable "pub_rt_name" {
  type = string
  default = "public-rt-weather-app-pimentel"
}

variable "priv_rt_name" {
  type = string
  default = "private-rt-weather-app-pimentel"
}

#ALB
variable "alb_name" {
  type = string
  default = "alb-weather-app-pimentel"
}

variable "alb_sg_name" {
  type = string
  default = "alb-sg-weather-app-pimentel"
}

#EC2 instance 
variable "ami_id" {
  type = string
  default = "ami-0c641f2290e9cd048"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

#ASG policy values 
variable "asg_min" {
  type = string
  default = "1"
}

variable "asg_desired" {
  type = string
  default = "2"
}

variable "asg_max" {
  type = string
  default = "3"
}