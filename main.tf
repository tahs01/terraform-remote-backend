resource "aws_s3_bucket" "s3_bucket_acl_tfstate" {
  bucket   = var.s3_bucket_name
  acl      = "private"
  versioning {
    enabled = true
  }
  aws_s3_bucket_server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = var.dynamodb_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}