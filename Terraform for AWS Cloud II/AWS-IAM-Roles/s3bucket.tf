#Create AWS S3 Bucket

resource "aws_s3_bucket" "levelup_s3bucket" {
  bucket = "levelup_bucket-141"
  acl    = "private"

  tags = {
    Name = "levelup_bucket-141"
  }
}

