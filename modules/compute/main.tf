resource "aws_instance" "web" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.public_subnet_ids[0]
  vpc_security_group_ids = [var.aws_security_group_id]
  key_name = var.key_name

  tags = {
    Name = var.instance_name
  }
}

