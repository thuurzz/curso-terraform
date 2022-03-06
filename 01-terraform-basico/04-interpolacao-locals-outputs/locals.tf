locals {
  common_tags = {
    Service     = "Curso Terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Arthur Vinicius"
  }

  ip_filepath = "ips.json"
}