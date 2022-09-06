# Private route tables 
resource "aws_route_table" "priv_rt_1" {
  vpc_id = aws_vpc.vpc_1.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw_1.id
  }

  tags = {
    Name = var.priv_rt_name_1
  }
}

resource "aws_route_table" "priv_rt_2" {
  vpc_id = aws_vpc.vpc_1.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw_2.id
  }

  tags = {
    Name = var.priv_rt_name_2
  }
}

resource "aws_route_table" "priv_rt_3" {
  vpc_id = aws_vpc.vpc_1.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw_3.id
  }

  tags = {
    Name = var.priv_rt_name_3
  }
}

# Public route tables 
resource "aws_route_table" "pub_rt_1" {
  vpc_id = aws_vpc.vpc_1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = var.pub_rt_name_1
  }
}

resource "aws_route_table" "pub_rt_2" {
  vpc_id = aws_vpc.vpc_1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = var.pub_rt_name_2
  }
}

resource "aws_route_table" "pub_rt_3" {
  vpc_id = aws_vpc.vpc_1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = var.pub_rt_name_3
  }
}

#Associated private route tables
resource "aws_route_table_association" "priv_subnet_1" {
  subnet_id = aws_subnet.priv_sub_1.id
  route_table_id = aws_route_table.priv_rt_1.id
}
 
resource "aws_route_table_association" "priv_subnet_2" {
  subnet_id = aws_subnet.priv_sub_2.id
  route_table_id = aws_route_table.priv_rt_2.id
}
 
resource "aws_route_table_association" "priv_subnet_3" {
  subnet_id = aws_subnet.priv_sub_3.id
  route_table_id = aws_route_table.priv_rt_3.id
}

#Associated public route tables
resource "aws_route_table_association" "pub_subnet_1" {
  subnet_id = aws_subnet.pub_sub_1.id
  route_table_id = aws_route_table.pub_rt_1.id
}

resource "aws_route_table_association" "pub_subnet_2" {
  subnet_id = aws_subnet.pub_sub_2.id
  route_table_id = aws_route_table.pub_rt_2.id
}

resource "aws_route_table_association" "pub_subnet_3" {
  subnet_id = aws_subnet.pub_sub_3.id
  route_table_id = aws_route_table.pub_rt_3.id
}