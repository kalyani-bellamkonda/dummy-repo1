#----------------------------------------------------------
# Build Web Server EC2 Instance (Apache installed)
# Build Amamzon Linux Instance as second EC2 instance
# Feel free to change Tags specific parameters here
# Terraform Dcoumentation for this lab: 
# EC2 Instance: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
# Security Groups: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group
# Get the latest AMI id from AWS Services - > EC2 -> Launch Instances
#----------------------------------------------------------

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami                    = "ami-048f6ed62451373d9" // Amazon Linux2
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.lab-web-sg.id]
  user_data              = file("user_data.sh") // Static File
  tags = {
    Name  = "WebServer Built via Terraform Script"
    Environment = "Lab"
  }
}

resource "aws_security_group" "lab-web-sg" {
  name        = "Lab-WebServer-SG"
  description = "Security Group for Lab WebServer"

  #Inbound rules for http port 
  ingress {
    description = "Allow port HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #Inbound rules for https port
  ingress {
    description = "Allow port HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #outbound rule for all ports
  egress {
    description = "Allow ALL ports"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = "WebServer SG by Terraform"
    Environment = "Lab"
  }
}
