variable "aws_region" {
       description = "The AWS region to create Infrastructure" 
       default     = "ap-south-1" 
}

variable "key_name" { 
    description = " SSH key to connect to ec2 instance" 
    default     =  "batch13" 
}

variable "instance_type" { 
    description = "instance type for ec2" 
    default     =  "t2.micro" 
}

variable "ami_id" { 
    description = "AMI for Amazon-Linux Ec2 instance" 
    default     = "ami-022d03f649d12a49d" 
}

variable "subnet_id" { 
    description = "Subnet to launch Amazon-Linux Ec2 instance" 
    default     = "subnet-0287cbfb11ccb5993" 
}
