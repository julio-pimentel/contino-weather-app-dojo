# Elastic IPs
resource "aws_eip" "eip_1" {
  vpc = true
}

resource "aws_eip" "eip_2" {
  vpc = true
}

resource "aws_eip" "eip_3" {
  vpc = true
}
