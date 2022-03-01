provider "aws" {
  region = "us-east-1"


}

terraform {
  required_version = "1.1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.3.0"
    }
  }
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-cursy-udemy-terraform-novo-nome"

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
