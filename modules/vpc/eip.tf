# Elastic IPs
resource "aws_eip" "eip_1" {
  vpc = true

  tags = {
    Name = var.eip_name_1
  }
}

resource "aws_eip" "eip_2" {
  vpc = true

  tags = {
    Name = var.eip_name_2
  }
}

resource "aws_eip" "eip_3" {
  vpc = true

  tags = {
    Name = var.eip_name_3
  }
}
