terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 4.2.0"
    }
  }
  required_version = "~> 1.1.7"
}

provider "aws" {
  region = "us-east-1"
}

module "sshkey" {
  source = "git::https://github.com/VijayBheemineni/terraform_modules_aws_sshkey.git?ref=v0.1.4"
  # source                = "../../terraform_modules_aws_sshkey"
  tags                  = var.tags
  sshkey_config         = var.sshkey_config
  secretsmanager_config = var.secretsmanager_config
}
