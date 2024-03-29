# ----------------------------------------------------------------------------------------------------------------------
# Provider
# ----------------------------------------------------------------------------------------------------------------------

provider "aws" {
  region = "sa-east-1"
  version = "~> 2.39"
  shared_credentials_file = "~/.aws/credentials"
  profile = "devopsinfra"
}

# ----------------------------------------------------------------------------------------------------------------------
# VPC
# ----------------------------------------------------------------------------------------------------------------------

module "vpc" {
  source = "../modules/vpc"

  name = "vpc-dev"
  cidr = "100.68.1.0/24"

  private_subnets  = ["100.68.1.0/26"]

  tags {
    Environment = "dev"
    Terraform   = "true"
  }
}

