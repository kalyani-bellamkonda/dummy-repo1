#----------------------------------------------------------
# Build EC2 Instance
# Build Ubuntu Instance as first EC2 instance
# Build Amamzon Linux Instance as second EC2 instance
# Feel free to change Tags specific attribute values here
# Terraform Dcoumentation for this lab: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
#----------------------------------------------------------

provider "aws" {
  region = "us-east-1"
  #You can provide access key and secret values here as well but nor recommended. 
  #Instead  use EXPORT/environment variables from terminal. Refer to README file for the EXPORT variables you can use
  #access_key = <>
  #secret_key = <>
}

data "aws_ami" "ubuntu-ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "ec2_instance_ubuntu" {
  ami           = data.aws_ami.ubuntu-ami.id    # You can get ami id from AWS Launch Instances in AWS cloud
  instance_type = "t3.micro"              
  
  tags = {
    Name    = "dev-UbuntuLinux-Server"
    Owner   = "Org/Dept Name"
    project = "Mars Helicopter"
    Environment = "lab"
  }
}

# resource "aws_instance" "ec2_instance_amazon" {
#   ami           = "ami-0742b4e673072066f"       # You can get ami id from AWS Launch Instances in AWS cloud
#   instance_type = "t3.small"              
#   tags = {
#     Name  = "dev-AmazonLinux-Server"
#     Owner = "Org/Dept Name"
#     project = "Mars Helicopter"
#     Environment = "development"
#   }
# }
