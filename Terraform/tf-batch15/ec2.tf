provider "aws" {
  region = "ap-south-1"
}

#Create security group with firewall rules
resource "aws_security_group" "batch13_security_grp" {
  name        = "Batch-15 Security Group"
  description = "security group for terraform instances"
  vpc_id = "vpc-02c78631e403cf573"

 ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  } 

 ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }  

 # outbound from Ec
  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags= {
    Name = "Batch-15 Security Group"
  }
}