variable "aws_region" {
  description = "AWS Region to Deploy Resource into"
  type        = string
  default     = "us-east-2"
}

variable "aws_profile" {
  description = "AWS Profile Name"
  type        = string
  default     = "profile_name"
}

variable "s3_bucket_name" {
  description = "AWS S3 bucket Name"
  type        = string
  default     = "s3_bucket_name"
}

variable "dynamodb_name" {
  description = "AWS Dynamodb Name"
  type        = string
  default     = "db_name"
}