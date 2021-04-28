#----------------------------------------------------------
# Build EC2 Instance
# Build Ubuntu Instance as first EC2 instance
# Build Amamzon Linux Instance as second EC2 instance
# Feel free to change Tags specific attribute values here
#----------------------------------------------------------

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_instance_ubuntu" {
  ami           = "ami-06e54d05255faf8f6" # You can get ami id from AWS Launch Instances in AWS cloud
  instance_type = "t3.micro"              
  
  tags = {
    Name    = "dev-UbuntuLinux-Server"
    Owner   = "Org/Dept Name"
    project = "Mars Helicopter"
  }
}

resource "aws_instance" "ec2_instance_amazon" {
  ami           = "ami-0528a5175983e7f28"       # You can get ami id from AWS Launch Instances in AWS cloud
  instance_type = "t3.small"              
  tags = {
    Name  = "dev-AmazonLinux-Server"
    Owner = "Org/Dept Name"
    project = "Mars Helicopter"
  }
}
