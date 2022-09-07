# Elastic IPs
resource "aws_eip" "eip_a" {
  vpc = true

  tags = {
    Name = var.eip_name_a
  }
}

resource "aws_eip" "eip_b" {
  vpc = true

  tags = {
    Name = var.eip_name_b
  }
}

resource "aws_eip" "eip_c" {
  vpc = true

  tags = {
    Name = var.eip_name_c
  }
}
