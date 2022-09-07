resource "aws_ssm_parameter" "s3_bucket_name" {
  name  = "/${var.ssm_prefix}/s3/s3_bucket_name"
  type  = "String"
  value = aws_s3_bucket.s3.id
}

resource "aws_ssm_parameter" "s3_bucket_name_arn" {
  name  = "/${var.ssm_prefix}/s3/s3_bucket_name_arn"
  type  = "String"
  value = aws_s3_bucket.s3.arn
}