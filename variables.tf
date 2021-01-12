variable "region" {
  description = "Region on AWS to Deploy"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
}

variable "public_subnet_cidrs" {
  description = "CIDRs for the PUBLIC subnets"
}

variable "public_sg_ingress" {
  description = "public_subnet INGRESS rules"
}

variable "public_sg_egress" {
  description = "public_subnet EGRESS rules"
}

variable "instance_type" {
  description = "Instance type for EC2"
}

variable "min_size" {
  description = "Min size of instances on aws_launch_configuration"
}

variable "desired_capacity" {
  description = "Desired capacity of instances on aws_launch_configuration"
}

variable "max_size" {
  description = "Max size of instances on aws_launch_configuration"
}