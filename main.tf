
resource "aws_s3_bucket" "my_test_bucket" {
  bucket = "my_test_bucket_checkov"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "my_test_bucket" {
  bucket = aws_s3_bucket.my_test_bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}

resource "aws_s3_bucket_acl" "temp_files_api_acl" {
  bucket = aws_s3_bucket.my_test_bucket.id
  acl    = "private"
}