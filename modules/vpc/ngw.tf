# NAT Gateway
resource "aws_nat_gateway" "ngw_a" {
  allocation_id = aws_eip.eip_a.id
  subnet_id = aws_subnet.pub_sub_a.id
  depends_on = [aws_internet_gateway.igw]
  tags = {
    Name = "weather-pimentel-ngw-a"
  }
}

resource "aws_nat_gateway" "ngw_b" {
  allocation_id = aws_eip.eip_b.id
  subnet_id = aws_subnet.pub_sub_b.id
  depends_on = [aws_internet_gateway.igw]
  tags = {
    Name = "weather-pimentel-ngw-b"
  }
}

resource "aws_nat_gateway" "ngw_c" {
  allocation_id = aws_eip.eip_c.id
  subnet_id = aws_subnet.pub_sub_c.id
  depends_on = [aws_internet_gateway.igw]
  tags = {
    Name = "weather-pimentel-ngw-c"
  }
}
