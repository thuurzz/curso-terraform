provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = "~>0.15.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.3.0"
    }
  }
}

resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.isntance_tags
}
