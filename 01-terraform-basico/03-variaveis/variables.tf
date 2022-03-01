variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"

}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-0e472ba40eb589f49"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t3.micro"
}

variable "isntance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    Project = "Curso AWS com Terraform"
  }
}



