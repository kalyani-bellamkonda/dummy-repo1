This repository helps with simple lab excercises to learn terraform step by step. 
Cloud Provider considered for this excercise is "AWS Provider"


## Pre-Requisites for you to follow along
- Code Editor, where we write TF Configuration Code, is Visual Studio Code: https://code.visualstudio.com/download
- An AWS Account, because we are automating AWS infrastructure with Terraform


## Useful Links
- Code Editor, e.g. Visual Studio Code: https://code.visualstudio.com/download
- Installation Guide for Terraform: https://learn.hashicorp.com/tutorials/terraform/install-cli
- Guide of how to create an AWS Account: https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/
- AWS 1-Year Free Tier information: https://aws.amazon.com/free
- Installation Guides for AWS CLI: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html 


## Commands used 

### initialize

    terraform init

### preview terraform actions

    terraform plan

### apply configuration with variables

    terraform apply -var-file terraform-dev.tfvars
    terraform apply -var-file terraform-test.tfvars
    terraform apply -var-file terraform-prod.tfvars

### destroy a single resource

    terraform destroy -target aws_vpc.<app-name>-dev-vpc  

### destroy everything fromtf files

    terraform destroy

### show resources and components from current state

    terraform state list

### show current state of a specific resource/data

    terraform state show aws_vpc.<app-name>-dev-vpc    

### set avail_zone as custom tf environment variable - before apply

    export TF_VAR_avail_zone="us-east-1a"
    export AWS_ACCESS_KEY_ID="<>"
    export AWS_SECRET_ACCESS_KEY="<>"
    export AWS_DEFAULT_REGION="us-east-1"


## More Information: AWS Services and components we use or create with Terraform
- Amazon EC2 - Virtual Server: https://aws.amazon.com/ec2
- Amazon VPC - Your Virtual Private Network on AWS: https://aws.amazon.com/vpc
- Subnet - Subnetwork, logical subdivision of IP network: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html
- Internet Gateway - a VPC component: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html
- Security Group - Virtual Firewall: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html
- Route Table - Configuring Network Traffic: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html
- Amazon S3  - Simple Storage: https://aws.amazon.com/s3/ (Udemy Section 7: when configuring Remote State)
