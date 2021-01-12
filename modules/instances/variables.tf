variable "region" {
  description = "Region on AWS to Deploy"
}

variable "public_subnets" {
  description = "List of PUBLICS subnets"
}

variable "vpc_main_id" {
  description = "Main VPC ID"
}

variable "public_sg_ingress" {
  description = "Ingress Rules to public_subnet"
}

variable "public_sg_egress" {
  description = "Egress Rules to public_subnet"
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