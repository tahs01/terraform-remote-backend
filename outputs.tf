output "s3_bucket_name" {
  description = "The name of s3 bucket"
  value       = resource.aws_s3_bucket.s3_bucket_acl_tfstate.id
}

output "aws_dynamodb_table_name" {
  description = "The name of dynamodb table"
  value       = resource.aws_dynamodb_table.terraform_locks
}