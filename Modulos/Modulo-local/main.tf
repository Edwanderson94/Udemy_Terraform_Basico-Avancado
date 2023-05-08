###############################################################################################################
# Udemy - Terraform do básico ao avançado
# Seção - 
# Pré-Requisitos - 
# Resumo de ação - 
###############################################################################################################

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 4.0" --> teste realizado e funcionou!
      version = "4.12.1"
    }
  }

  backend "s3" {
    bucket = "edwanderson-remote-state-aws-az"
    key    = "aws-vm-modulo-local/terraform.tfstate"
    region = "sa-east-1"
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

module "network" {
  source = "./network"
  cidr_vpc = "10.0.0.0/16"
  cidr_subnet = "10.0.0.1/24"
  enviroment = "dev"
}