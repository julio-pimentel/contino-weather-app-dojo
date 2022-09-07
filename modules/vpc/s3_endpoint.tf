resource "aws_vpc_endpoint" "s3" {
  vpc_id = aws_vpc.vpc.id
  service_name = "com.amazonaws.${var.aws_region}.s3"
  tags = {
    Name = var.vpc_endpoint_name
  }
}

resource "aws_vpc_endpoint_route_table_association" "vpc_endpoint_rt_assoc_a" {
  route_table_id  = aws_route_table.pub_rt_a.id  
  vpc_endpoint_id = aws_vpc_endpoint.s3.id
}

resource "aws_vpc_endpoint_route_table_association" "vpc_endpoint_rt_assoc_b" {
  route_table_id  = aws_route_table.pub_rt_b.id  
  vpc_endpoint_id = aws_vpc_endpoint.s3.id
}

resource "aws_vpc_endpoint_route_table_association" "vpc_endpoint_rt_assoc_c" {
  route_table_id  = aws_route_table.pub_rt_c.id  
  vpc_endpoint_id = aws_vpc_endpoint.s3.id
}
