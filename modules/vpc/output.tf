output "vpc_main_id" {
  value       = aws_vpc.main.id
  description = "Main VPC ID"
}

output "public_subnets" {
  value       = aws_subnet.public_subnets
  description = "List of PUBLICS subnets"
}