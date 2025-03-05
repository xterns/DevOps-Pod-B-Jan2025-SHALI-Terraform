# Terraform EC2 Module with Dynamic AMI Retrieval

## Overview
This Terraform module provisions EC2 instances using dynamically retrieved AMI IDs. The AMI IDs are filtered to retrieve the latest build created with Packer. The module is designed to be reusable across different environments (sandbox, staging, production).

## Features
- Dynamically retrieves the latest AMI ID created with Packer.
- Allows filtering AMIs based on a specific tag or naming convention.
- Supports customizable instance parameters such as instance type, key pair, and networking configurations.
- Modular and reusable across multiple environments.

## Prerequisites
Before using this module, ensure you have the following:
- Terraform installed ([Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli))
- AWS CLI configured ([AWS CLI Setup](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html))
- Packer installed and used to create AMIs ([Install Packer](https://developer.hashicorp.com/packer/downloads))

## Project Structure
```
terraform-project/
│── modules/
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── terraform.tfvars
│   ├── prod/
│       ├── main.tf
│       ├── terraform.tfvars
│── main.tf
│── variables.tf
│── outputs.tf
│── provider.tf
│── terraform.tfvars
│── backend.tf
│── README.md
```

## Step-by-Step Implementation

### Step 1: Define the Terraform Module
Create a Terraform module in `modules/ec2/` to provision EC2 instances.

#### "modules/ec2/main.tf"
```hcl
resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.latest_packer.id
  instance_type          = var.instance_type
  key_name               = var.key_pair_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = var.instance_name
    Environment = var.environment
  }
}

```



### Step 2: Retrieve the Latest AMI ID Dynamically
Use Terraform data sources to retrieve the latest AMI ID filtered by a specific Packer tag.

#### `data-sources.tf`
```hcl
data "aws_ami" "latest_packer" {
  most_recent = true
  owners      = ["self"] # Adjust the owner ID if needed

  filter {
    name   = "tag:packer_build"
    values = ["latest"]
  }
}
```

### Step 3: Use the Module in `main.tf`
In the `environments/stage/main.tf` file, call the EC2 module and pass the dynamically retrieved AMI ID.

```hcl
module "ec2" {
  source              = "../modules/ec2"
  ami_id              = data.aws_ami.latest_packer.id
  instance_type       = var.instance_type
  key_name            = var.key_name
  subnet_id           = var.subnet_id
  security_group_ids  = var.security_group_ids
  instance_name       = "EC2 instance type"
}
```

### Step 4: Define Environment-Specific Configurations
Each environment should have its own `terraform.tfvars` file to store configurable values.

#### `environments/sandbox/terraform.tfvars`
```hcl
instance_type     = "t2.micro"
key_pair_name     = "sandbox-key"
subnet_id         = "subnet-12345678"
security_group_ids = ["sg-abcdefgh"]
instance_name     = "sandbox-instance"
environment       = "sandbox"
 
```

#### `environments/prod/terraform.tfvars`
```hcl
instance_type = "t2.large"
key_name = "my-prod-keypair"
subnet_id = "subnet-abcdef"
security_group_ids = ["sg-112233"]
```

### Step 5: Apply the Terraform Configuration
Run the following Terraform commands:

```sh
cd environments/module
terraform init
terraform plan -var-file=terraform.tfvars
terraform apply -var-file=terraform.tfvars -auto-approve
```

For the production environment, navigate to `environments/prod/` and repeat the process.

### Step 6: Verify the Deployment
Once the Terraform script runs successfully, verify the EC2 instance in the AWS Management Console.

### Step 7: Destroy the Resources (If Needed)
To destroy the created infrastructure, run:

```sh
terraform destroy -var-file=terraform.tfvars -auto-approve
```

## Conclusion
This Terraform module allows DevOps engineers to dynamically retrieve the latest Packer-built AMI and provision EC2 instances efficiently across multiple environments. By structuring the project modularly, reusability and maintainability are ensured.

