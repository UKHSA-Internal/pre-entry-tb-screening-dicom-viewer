output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = { for k, v in module.s3_bucket : k => v.s3_bucket_id }
}

output "s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = { for k, v in module.s3_bucket : k => v.s3_bucket_arn }
}

output "bucket_policies" {
  description = "The IAM policy documents for each bucket, specifying the access permissions."
  value       = data.aws_iam_policy_document.bucket_policy
}

output "s3_access_role_arn" {
  description = "The ARN of the IAM role that allows Lambda to access the S3 bucket"
  value       = { for k, v in aws_iam_role.this : k => v.arn }
}