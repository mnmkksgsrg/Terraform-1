resource "aws_vpc" "main" {
  cidr_block = var.vpc-cidr
}

resource = "aws_subnet" "public" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet-cidr
}

resource - "aws_security_group" "main" {
  vpc_id = aws_vpc.main.id

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [0.0.0.0/0]
  }
   
  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [0.0.0.0/0]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [0.0.0.0/0]
  }
}





