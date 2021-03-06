provider "aws" {
  region = "us-east-1"


}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-cursy-udemy-terraform"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Arthur Vinicius"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.my-test-bucket.bucket
  acl    = "private"
}
