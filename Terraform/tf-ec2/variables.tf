variable "aws_region" {
       description = "The AWS region to create Infrastructure" 
       default     = "us-east-2" 
}

variable "key_name" { 
    description = " SSH key to connect to ec2 instance" 
    default     =  "terraform" 
}

variable "instance_type" { 
    description = "instance type for ec2" 
    default     =  "t2.micro" 
}

variable "security_group" { 
    description = "Name of security group" 
    default     = "terraform-security-group" 
}

variable "tag_name" { 
    description = "Tag Name of for Ec2 instance" 
    default     = "tf-ec2-instance" 
} 
variable "ami_id" { 
    description = "AMI for Amazon-Linux Ec2 instance" 
    default     = "ami-02d1e544b84bf7502" 
}