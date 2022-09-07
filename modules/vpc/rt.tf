# Private route tables 
resource "aws_route_table" "priv_rt_a" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw_a.id
  }

  tags = {
    Name = var.priv_rt_name_a
  }
}

resource "aws_route_table" "priv_rt_b" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw_b.id
  }

  tags = {
    Name = var.priv_rt_name_b
  }
}

resource "aws_route_table" "priv_rt_c" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw_c.id
  }

  tags = {
    Name = var.priv_rt_name_c
  }
}

# Public route tables 
resource "aws_route_table" "pub_rt_a" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = var.pub_rt_name_a
  }
}

resource "aws_route_table" "pub_rt_b" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = var.pub_rt_name_b
  }
}

resource "aws_route_table" "pub_rt_c" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = var.pub_rt_name_c
  }
}

#Associated private route tables
resource "aws_route_table_association" "priv_subnet_a" {
  subnet_id = aws_subnet.priv_sub_a.id
  route_table_id = aws_route_table.priv_rt_a.id
}
 
resource "aws_route_table_association" "priv_subnet_b" {
  subnet_id = aws_subnet.priv_sub_b.id
  route_table_id = aws_route_table.priv_rt_b.id
}
 
resource "aws_route_table_association" "priv_subnet_c" {
  subnet_id = aws_subnet.priv_sub_c.id
  route_table_id = aws_route_table.priv_rt_c.id
}

#Associated public route tables
resource "aws_route_table_association" "pub_subnet_a" {
  subnet_id = aws_subnet.pub_sub_a.id
  route_table_id = aws_route_table.pub_rt_a.id
}

resource "aws_route_table_association" "pub_subnet_b" {
  subnet_id = aws_subnet.pub_sub_b.id
  route_table_id = aws_route_table.pub_rt_b.id
}

resource "aws_route_table_association" "pub_subnet_c" {
  subnet_id = aws_subnet.pub_sub_c.id
  route_table_id = aws_route_table.pub_rt_c.id
}