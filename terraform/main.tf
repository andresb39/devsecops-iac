
resource "aws_s3_bucket" "my_test_bucket" {
  bucket = var.bucket_name
  tags = {
    Name        = var.bucket_name
    Application = "my_test_app6"
  }
}

resource "aws_s3_bucket_acl" "temp_files_api_acl" {
  bucket = aws_s3_bucket.my_test_bucket.id
  acl    = "private"
}
