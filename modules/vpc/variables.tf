#VPC
variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "vpc_name" {
  description = "Name to set on the VPC"
  type        = string
}

#Availability zones 
variable "az_a" {
  type = string
}

variable "az_b" {
  type = string
}

variable "az_c" {
  type = string
}

#Private subnet values 
variable "priv_sub_name_1" {
 type = string
}
 
variable "priv_sub_name_2" {
 type = string
}
 
variable "priv_sub_name_3" {
 type = string
}
 
variable "priv_sub_cidr_1" {
 type = string
}
 
variable "priv_sub_cidr_2" {
 type = string
}
 
variable "priv_sub_cidr_3" {
 type = string
}

#Public subnet values 
variable "pub_sub_name_1" {
  type = string
}

variable "pub_sub_name_2" {
  type = string
}

variable "pub_sub_name_3" {
  type = string
}

variable "pub_sub_cidr_1" {
  type = string
}

variable "pub_sub_cidr_2" {
  type = string
}

variable "pub_sub_cidr_3" {
  type = string
}

#Internet Gateway
variable "igw_name" {
  type = string
}

# Public Route Tables
variable "pub_rt_name_1" {
  type = string
}

variable "pub_rt_name_2" {
  type = string
}

variable "pub_rt_name_3" {
  type = string
}

# Public Route Tables
variable "priv_rt_name_1" {
  type = string
}

variable "priv_rt_name_2" {
  type = string
}

variable "priv_rt_name_3" {
  type = string
}

#S3 Gateway Endpoint 
variable "vpc_endpoint_name" {
  type        = string
}

#EIP
variable "eip_name_1" {
  type        = string
}

variable "eip_name_2" {
  type        = string
}

variable "eip_name_3" {
  type        = string
}