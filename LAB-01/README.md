This repository helps with simple lab excercises to learn terraform step by step.
Cloud Provider considered for this excercise is "**AWS Provider**"

## Pre-Requisites for you to follow along

> Code Editor, where we write Terraform Configuration Code, is **Visual Studio Code**.
>
> * Download VS Code from: https://code.visualstudio.com/download
>
> An AWS Account, because we are automating AWS infrastructure with Terraform
>
> * Create free AWS account from here: https://aws.amazon.com/

## Useful Links

- Code Editor, e.g. Visual Studio Code: https://code.visualstudio.com/download
- Installation Guide for Terraform: https://learn.hashicorp.com/tutorials/terraform/install-cli
- Guide of how to create an AWS Account: https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/
- AWS 1-Year Free Tier information: https://aws.amazon.com/free
- Installation Guides for AWS CLI: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html

## Git Commands used to setup code in your local machine

Go to your preferred root directory or workspace using Terminal window and clone the Git repository

```
git clone https://github.com/kalyani-bellamkonda/terraform-workshop.git
```

Once the repository is cloned, run the following commands to switch to newly created directory and check out the branch that we will be starting with as first LAB.

```

ls

cd terraform-workshop/

git branch -a

git checkout LAB-01

ls
```

## Set Environment Variables before Terrform Apply command is run

set AWS Access key, secret key, default region and avail_zone as environment variables - before terraform apply command to be run

```
export AWS_ACCESS_KEY_ID="<>"
export AWS_SECRET_ACCESS_KEY="<>"
export AWS_DEFAULT_REGION="us-east-1"

export TF_VAR_avail_zone="us-east-1a"
```

## Terraform Commands used

### initialize

```
terraform init
```

### preview terraform actions

```
terraform plan
```

### validate terraform files

```
terraform validate
```

### destroy everything (all resources) created from tf files

```
terraform destroy
```

### show resources and components from current state

```
terraform state list
```

## More Information: AWS Services and components we use or create with Terraform

- Amazon EC2 - Virtual Server: https://aws.amazon.com/ec2
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
