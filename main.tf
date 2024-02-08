provider "aws" {
  region = "eu-central-1"
}
resource "aws_s3_bucket" "s01_bucket" {
  bucket = "01-bucket-ruchi"
}
resource "aws_s3_bucket_versioning" "s01_bucket" {
  bucket = "01-bucket-ruchi"
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_iam_user" "s01_user" {
   name = "my-iam-user"
}
output "s01_bucket_versioning" {
    value = aws_s3_bucket.s01_bucket.versioning[0].enabled
}
output "s01_user_complete_details" {
  value = aws_iam_user.s01_user
}