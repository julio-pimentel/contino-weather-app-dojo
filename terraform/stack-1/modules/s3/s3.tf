### Create Resources
resource "aws_s3_bucket" "s3" {
  bucket = var.bucket
  acl    = "private"

  tags   = var.tags
}