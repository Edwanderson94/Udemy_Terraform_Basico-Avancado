terraform {
  # required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
  default_tags {
    tags = {
      owner      = "edevops"
      managed-by = "terraform"
    }
  }
}