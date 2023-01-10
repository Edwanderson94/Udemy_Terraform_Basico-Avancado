
# --------------------------------------------------------------------------------------------------------------------------------------
# BLOCO TERRAFORM - São configurações do terraform 
# Tipos de configurações: 
# required_version
# required_provider
# backend 
# cloud
# experiments 
# provider_meta
# --------------------------------------------------------------------------------------------------------------------------------------
terraform {
    # required_version = "= 1.1.0"
    # required_version = ">= 1.0.0"
    # required_version = ">= 1.0.0, < 1.2.0"
    required_version = "~> 1.1.0" # 1.1.0 até 1.1.n

    required_providers {
      aws = {
        # version = "3.50.0"
        version = ">= 3.50.0"
        source = "hashicorp/aws"
      }
      azurerm ={
        version = "2.70.0"
        source = "hashcorp/azurerm"
      }
    }

    # Armazena o State
    backend "s3" {

    }
}