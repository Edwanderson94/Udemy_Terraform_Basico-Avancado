###############################################################################################################
# Udemy - Terraform do basico ao avançado
# Seção - 
# Pré-Requisitos - Executar a criação da VPC (Pasta aws-vpc)
# Resumo de ação - Criação de VM e Key Pair
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
    key    = "aws-vm/terraform.tfstate"
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
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "edwanderson-remote-state-aws-az"
    key    = "aws-vpc/terraform.tfstate"
    region = "sa-east-1"
  }
}