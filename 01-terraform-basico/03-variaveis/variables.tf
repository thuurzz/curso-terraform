variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-04505e74c0741db8d"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}

variable "isntance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    Project = "Curso AWS com Terraform"
  }
}



