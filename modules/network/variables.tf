variable "vpc_cidr" {
  type        = string
  description = "cidr block for main VPC"
}

variable "public_subnets" {
  type = map(object({
    subnet_cidr       = string
    availability_zone = string
  }))
  description = "保留"
}

