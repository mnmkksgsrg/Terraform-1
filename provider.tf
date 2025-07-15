terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>6.0"
    }
  }
}

provider "aws" {
  region = "ap-north-1"
  default_tags {
    tags = {
      Pj = terraform1
      Owner = mnmkksgsrg
      Env = practice
    }
  }
}




