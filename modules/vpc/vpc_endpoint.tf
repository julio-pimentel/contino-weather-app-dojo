resource "aws_vpc_endpoint" "s3" {
  vpc_id = aws_vpc.vpc_1.id
  service_name = "com.amazonaws.us-east-1.gateway-s3"
  tags = {
    Name = var.vpc_endpoint_name
  }
}

resource "aws_vpc_endpoint_route_table_association" "vpc_endpoint_rt_assoc_1" {
  route_table_id  = aws_route_table.pub_rt_1.vpc_id  
  vpc_endpoint_id = aws_vpc_endpoint.s3.id
}

resource "aws_vpc_endpoint_route_table_association" "vpc_endpoint_rt_assoc_2" {
  route_table_id  = aws_route_table.pub_rt_2.vpc_id  
  vpc_endpoint_id = aws_vpc_endpoint.s3.id
}

resource "aws_vpc_endpoint_route_table_association" "vpc_endpoint_rt_assoc_3" {
  route_table_id  = aws_route_table.pub_rt_3.vpc_id  
  vpc_endpoint_id = aws_vpc_endpoint.s3.id
}
