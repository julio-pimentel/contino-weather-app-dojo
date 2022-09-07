#VPC
variable "vpc_cidr" {
}

variable "vpc_name" {
}

#Availability zones 
variable "aws_region" {
}

variable "az_a" {
}

variable "az_b" {
}

variable "az_c" {
}

#Private subnet values 
variable "priv_sub_name_a" {
}
 
variable "priv_sub_name_b" {
}
 
variable "priv_sub_name_c" {
}
 
variable "priv_sub_cidr_a" {
}
 
variable "priv_sub_cidr_b" {
}
 
variable "priv_sub_cidr_c" {
}

#Public subnet values 
variable "pub_sub_name_a" {
}

variable "pub_sub_name_b" {
}

variable "pub_sub_name_c" {
}

variable "pub_sub_cidr_a" {
}

variable "pub_sub_cidr_b" {
}

variable "pub_sub_cidr_c" {
}

#Internet Gateway
variable "igw_name" {
}

# Public Route Tables
variable "pub_rt_name_a" {
}

variable "pub_rt_name_b" {
}

variable "pub_rt_name_c" {
}

# Public Route Tables
variable "priv_rt_name_a" {
}

variable "priv_rt_name_b" {
}

variable "priv_rt_name_c" {
}

#S3 Gateway Endpoint 
variable "vpc_endpoint_name" {
}

#EIP
variable "eip_name_a" {
}

variable "eip_name_b" {
}

variable "eip_name_c" {
}