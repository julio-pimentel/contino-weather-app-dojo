### Define Output
output "s3_bucket_name" {
  description = "The name of the bucket"
  value       = aws_s3_bucket.s3.id
}

output "s3_bucket_name_arn" {
  description = "The name of the bucket"
  value       = aws_s3_bucket.s3.arn
}