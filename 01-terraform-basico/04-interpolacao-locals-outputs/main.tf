terraform {
  required_version = "~>0.15.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.3.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
