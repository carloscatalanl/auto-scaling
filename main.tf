provider "aws" {
  region = var.region
}

module "vpc" {
  source               = "./modules/vpc"
  region               = var.region
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
}

module "network" {
  source = "./modules/network"
  region = var.region
  vpc_main_id     = module.vpc.vpc_main_id
  public_subnets  = module.vpc.public_subnets
}

module "instances" {
  source = "./modules/instances"
  region = var.region
  vpc_main_id     = module.vpc.vpc_main_id
  public_subnets  = module.vpc.public_subnets
  
  instance_type = var.instance_type
  min_size           = var.min_size
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size

  public_sg_ingress  = var.public_sg_ingress
  public_sg_egress   = var.public_sg_egress
}