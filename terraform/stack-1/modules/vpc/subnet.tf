#Private subnets
resource "aws_subnet" "priv_sub_1" {
  vpc_id = aws_vpc.vpc_1.id
  cidr_block = var.priv_sub_cidr_1
  availability_zone = var.az_a

  tags = {
    Name = var.priv_sub_name_1
  }
}

resource "aws_subnet" "priv_sub_2" {
  vpc_id = aws_vpc.vpc_1.id
  cidr_block = var.priv_sub_cidr_2
  availability_zone = var.az_b

  tags = {
    Name = var.priv_sub_name_2
  }
}

resource "aws_subnet" "priv_sub_3" {
  vpc_id = aws_vpc.vpc_1.id
  cidr_block = var.priv_sub_cidr_3
  availability_zone = var.az_c

  tags = {
    Name = var.priv_sub_name_3
  }
}

#Public subnets
resource "aws_subnet" "pub_sub_1" {
  vpc_id = aws_vpc.vpc_1.id
  cidr_block = var.pub_sub_cidr_1
  availability_zone = var.az_a
  map_public_ip_on_launch = true

  tags = {
    Name = var.pub_sub_name_1
  }
}

resource "aws_subnet" "pub_sub_2" {
  vpc_id = aws_vpc.vpc_1.id
  cidr_block = var.pub_sub_cidr_2
  availability_zone = var.az_b
  map_public_ip_on_launch = true

  tags = {
    Name = var.pub_sub_name_2
  }
}

resource "aws_subnet" "pub_sub_3" {
  vpc_id = aws_vpc.vpc_1.id
  cidr_block = var.pub_sub_cidr_3
  availability_zone = var.az_c
  map_public_ip_on_launch = true

  tags = {
    Name = var.pub_sub_name_3
  }
}
