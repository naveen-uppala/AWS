provider "aws" {
  region = var.aws_region
}

#Create security group with firewall rules
resource "aws_security_group" "batch13_security_grp" {
  name        = "Batch-13 Security Group"
  description = "security group for terraform instances"
  vpc_id = "vpc-0bed319d89e8b77b9"

 ingress {
    from_port   = 22
    to_port     = 22
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
    Name = "Batch-13 Security Group"
  }
}

resource "aws_instance" "myFirstInstance" {
  subnet_id = var.subnet_id
  ami     = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
  security_groups= [ "${aws_security_group.batch13_security_grp.id}" ]
  tags= {
    Name = "Batch-13 Instance"
  }
}  
