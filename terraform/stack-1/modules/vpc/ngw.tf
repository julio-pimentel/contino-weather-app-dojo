# NAT Gateway
resource "aws_nat_gateway" "ngw_1" {
  allocation_id = aws_eip.eip_1.id
  subnet_id = aws_subnet.pub_sub_1.id
  depends_on = [aws_internet_gateway.igw]
  tags = {
    Name = "weather-pimentel-ngw-1"
  }
}

resource "aws_nat_gateway" "ngw_2" {
  allocation_id = aws_eip.eip_2.id
  subnet_id = aws_subnet.pub_sub_2.id
  depends_on = [aws_internet_gateway.igw]
  tags = {
    Name = "weather-pimentel-ngw-2"
  }
}

resource "aws_nat_gateway" "ngw_3" {
  allocation_id = aws_eip.eip_3.id
  subnet_id = aws_subnet.pub_sub_3.id
  depends_on = [aws_internet_gateway.igw]
  tags = {
    Name = "weather-pimentel-ngw-3"
  }
}
