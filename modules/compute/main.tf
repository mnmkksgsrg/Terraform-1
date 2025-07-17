resource "aws_instance" "web" {
  ami = var.ami_id
  instance_type = var.ami_id
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [var.aws_security_group_id]
  key_name = var.key_name

  tags = {
    Name = var.instance_name
  }
}

