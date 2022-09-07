#VPC
output "vpc_id" {
  description = "VPC ID"
  value = aws_vpc.vpc.id
}

#Private subnet
output "priv_cidr_id_a" {
  value = aws_subnet.priv_sub_a.id
}

output "priv_cidr_id_b" {
  value = aws_subnet.priv_sub_b.id
}

output "priv_cidr_id_c" {
  value = aws_subnet.priv_sub_c.id
}

#Public subnet
output "pub_cidr_id_a" {
  value = aws_subnet.pub_sub_a.id
}

output "pub_cidr_id_b" {
  value = aws_subnet.pub_sub_b.id
}

output "pub_cidr_id_c" {
  value = aws_subnet.pub_sub_c.id
}
