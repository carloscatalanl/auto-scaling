## VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr

  tags = {
    Name = "HA - VPC"
  }
}

## PUBLIC Subnets
resource "aws_subnet" "public_subnets" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidrs[count.index]
  availability_zone = data.aws_availability_zones.all.names[count.index]
  count             = 2

  tags = {
    Name = "PUB Sub - ${count.index + 1}"
  }
}