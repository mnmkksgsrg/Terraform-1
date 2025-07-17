output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = [for s in aws_subnet.public : s.id]
}

output  "security_group_id" {
  value = aws_security_group.main.id
}

output  "route_table_id" {
  value = aws_route_table.public.id
}

