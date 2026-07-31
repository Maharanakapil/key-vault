terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "5.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "pipeline"
    storage_account_name = "pipelinepf"
    container_name = "pipeline"
    key = "kv.tfstate"
  }
}

provider "azurerm" {
  features {
    
  }
  subscription_id = "0161f2c9-547b-4991-88f7-999955cffd8d"
}