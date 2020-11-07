#Configuration for S3 Bucket
resource "aws_s3_bucket" "levelup-bucket" {
  bucket = "levelup-bucket-141"
  acl    = "private"

  tags = {
    Name = "levelup-bucket-141"
  }
}