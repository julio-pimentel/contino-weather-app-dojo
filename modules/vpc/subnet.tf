#Private subnets
resource "aws_subnet" "priv_sub_a" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.priv_sub_cidr_a
  availability_zone = var.az_a

  tags = {
    Name = var.priv_sub_name_a
  }
}

resource "aws_subnet" "priv_sub_b" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.priv_sub_cidr_b
  availability_zone = var.az_b

  tags = {
    Name = var.priv_sub_name_b
  }
}

resource "aws_subnet" "priv_sub_c" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.priv_sub_cidr_c
  availability_zone = var.az_c

  tags = {
    Name = var.priv_sub_name_c
  }
}

#Public subnets
resource "aws_subnet" "pub_sub_a" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.pub_sub_cidr_a
  availability_zone = var.az_a
  map_public_ip_on_launch = true

  tags = {
    Name = var.pub_sub_name_a
  }
}

resource "aws_subnet" "pub_sub_b" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.pub_sub_cidr_b
  availability_zone = var.az_b
  map_public_ip_on_launch = true

  tags = {
    Name = var.pub_sub_name_b
  }
}

resource "aws_subnet" "pub_sub_c" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.pub_sub_cidr_c
  availability_zone = var.az_c
  map_public_ip_on_launch = true

  tags = {
    Name = var.pub_sub_name_c
  }
}
