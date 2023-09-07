# Create VPC
# terraform aws create vpc
resource "aws_vpc" "vpc-1" {
  cidr_block = "192.168.0.0/16"
  tags      = {
    Name    = "Test vpc"
  }
}

resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.vpc-1.id
  cidr_block              = "192.168.0.0/20"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
  tags      = {
    Name    = "public-subnet-1"
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.vpc-1.id
  cidr_block              = "192.168.16.0/20"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true
  tags      = {
    Name    = "public-subnet-2"
  }
}