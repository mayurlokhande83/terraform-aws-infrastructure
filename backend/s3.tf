resource "aws_s3_bucket" "terraform_state" {
  bucket = "mayur-terraform-state-bucket"
  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "sse" {
  bucket = aws_s3_bucket.terraform_state.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
