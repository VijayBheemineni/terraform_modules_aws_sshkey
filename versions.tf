terraform {
  required_version = "~> 1.1.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.63"
    }
    local = {
      source  = "hashicorp/local"
      version = "= 2.1.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "= 3.1.0"
    }
  }
}
