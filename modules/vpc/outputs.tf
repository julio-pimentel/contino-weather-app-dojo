#VPC
output "vpc_id" {
  description = "VPC ID"
  value = aws_vpc.vpc_1.id
}

#Public subnet
output "pub_cidr_id_1" {
  value = aws_subnet.pub_sub_1.id
}

output "pub_cidr_id_2" {
  value = aws_subnet.pub_sub_2.id
}

output "pub_cidr_id_3" {
  value = aws_subnet.pub_sub_3.id
}

#Private subnet
output "priv_cidr_id_1" {
  value = aws_subnet.priv_sub_1.id
}

output "priv_cidr_id_2" {
  value = aws_subnet.priv_sub_2.id
}

output "priv_cidr_id_3" {
  value = aws_subnet.priv_sub_3.id
}
