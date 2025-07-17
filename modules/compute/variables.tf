variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "public_subnet_ids" {
  type = list(string)
}

variable "aws_security_group_id" {
  type = string
}

variable "key_name" {
  type = string
}

variable "instance_name" {
  type = string
}


