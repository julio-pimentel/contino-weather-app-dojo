resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.ssm_resource_prefix}/vpc/id"
  type  = "String"
  value = module.vpc.vpc_id
}

#VPC
resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.ssm_prefix}/infra/vpc/vpc_id"
  type  = "String"
  value = aws_vpc.vpc.id
}

#Private subnet
resource "aws_ssm_parameter" "priv_cidr_id_a" {
  name  = "/${var.ssm_prefix}/infra/vpc/priv_cidr_id_a"
  type  = "String"
  value = aws_subnet.priv_sub_a.id
}

resource "aws_ssm_parameter" "priv_cidr_id_b" {
  name  = "/${var.ssm_prefix}/infra/vpc/priv_cidr_id_b"
  type  = "String"
  value = aws_subnet.priv_sub_b.id
}

resource "aws_ssm_parameter" "priv_cidr_id_c" {
  name  = "/${var.ssm_prefix}/infra/vpc/priv_cidr_id_c"
  type  = "String"
  value = aws_subnet.priv_sub_c.id
}

#Public subnet
resource "aws_ssm_parameter" "pub_cidr_id_a" {
  name  = "/${var.ssm_prefix}/infra/vpc/pub_cidr_id_a"
  type  = "String"
  value = aws_subnet.pub_sub_a.id
}

resource "aws_ssm_parameter" "pub_cidr_id_b" {
  name  = "/${var.ssm_prefix}/infra/vpc/pub_cidr_id_b"
  type  = "String"
  value = aws_subnet.pub_sub_b.id
}

resource "aws_ssm_parameter" "pub_cidr_id_c" {
  name  = "/${var.ssm_prefix}/infra/vpc/pub_cidr_id_c"
  type  = "String"
  value = aws_subnet.pub_sub_c.id
}