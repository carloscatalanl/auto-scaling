variable "region" {
  description = "Region on AWS to Deploy"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
}

variable "public_subnet_cidrs" {
  description = "CIDRs for the PUBLIC subnets"
}