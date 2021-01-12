## Region
region   = "us-east-1"

## VPC
vpc_cidr = "10.0.0.0/16"

## Subnets
public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

## Security groups

# Public
public_sg_ingress = [
  {
    from_port   = 22  #SSH
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 80  #http
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 443 #https
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

public_sg_egress = [
  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  #all
    cidr_blocks = ["0.0.0.0/0"]
  }
]


## Instances
instance_type = "t2.micro"
min_size         = 1
desired_capacity = 2
max_size         = 3