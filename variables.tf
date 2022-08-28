variable "bucket" {
  type        = string
  description = "Specifies the name of an S3 Bucket"
  default     = "contino-weather-jpimentel-bucket"
}

variable "tags" {
  type        = map(string)
  description = "Use tags to identify project resources"
  default     = {}
}

# Region and AZs 
variable "aws_region" {
  default = "ap-southeast-2"
}

variable "az_a" {
  type = string
  default = "ap-southeast-2a"
}

variable "az_b" {
  type = string
  default = "ap-southeast-2b"
}

variable "az_c" {
  type = string
  default = "ap-southeast-2c"
}

#VPC
variable "vpc_cidr" {
  description = "VPC CIDR"
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name to set on the VPC"
  type = string
  default = "vpc-weather-app-pimentel"
}

#Public subnet values 
variable "pub_sub_name_1" {
  type = string
  default = "pub-sub-weather-pimentel-1"
}

variable "pub_sub_name_2" {
  type = string
  default = "pub-sub-weather-pimentel-2"
}

variable "pub_sub_name_3" {
  type = string
  default = "pub-sub-weather-pimentel-3"
}

variable "pub_sub_cidr_1" {
  type = string
  default = "10.0.1.0/24"
}

variable "pub_sub_cidr_2" {
  type = string
  default = "10.0.2.0/24"
}

variable "pub_sub_cidr_3" {
  type = string
  default = "10.0.3.0/24"
}

#Internet Gateway
variable "igw_name" {
  type = string
  default = "igw-weather-app-pimentel"
}

variable "pub_rt_name" {
  type = string
  default = "public-rt-weather-app-pimentel"
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