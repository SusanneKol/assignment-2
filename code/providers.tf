terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.79.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "rg-backend-tfstate"
    storage_account_name = "sanvhekfha8o1j2lc6t"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}