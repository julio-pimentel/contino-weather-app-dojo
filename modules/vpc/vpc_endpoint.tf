resource "aws_vpc_endpoint" "s3" {
  vpc_id = aws_vpc.vpc_1.id
  service_name = "com.amazonaws.us-east-1.s3"
}

resource "aws_vpc_endpoint_route_table_association" "vpc_endpoint_rt_assoc" {
  route_table_id  = aws_route_table.pub_rt.id
  vpc_endpoint_id = aws_vpc_endpoint.s3.id
}
