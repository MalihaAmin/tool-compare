provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "public-bucket" {
  bucket = "bucket-with-public-acl-2"
  acl = "authenticated-read"
}

