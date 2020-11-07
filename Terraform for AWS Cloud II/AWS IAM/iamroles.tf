#Roles to access the S3 Bucket
resource "aws_iam_role" "s3-levelup-bucket-role" {
  name               = "s3-levelup-bucket-role"
  assume_role_policy = <<EOF
{
  "Version": "2020-11-07",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

#Instance Profile for Role
resource "aws_iam_instance_profile" "s3-levelup-bucket-role-instanceprofile" {
  name = "s3-levelup-bucket-role"
  role = aws_iam_role.s3-levelup-bucket-role.name
}

#Policy for S3 Bucket Role
resource "aws_iam_role_policy" "s3-levelup-bucket-role-policy" {
  name = "s3-levelup-bucket-role-policy"
  role = aws_iam_role.s3-levelup-bucket-role.id
  policy = <<EOF
{
    "Version": "2020-11-07",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
              "s3:*"
            ],
            "Resource": [
              "arn:aws:s3:::levelup-bucket-141",
              "arn:aws:s3:::levelup-bucket-141/*"
            ]
        }
    ]
}
EOF

}