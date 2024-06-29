terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.109.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "CommongRG"  
    storage_account_name = "mycommonstore"                      
    container_name       = "tfstate"                       
    key                  = "dev.terraform.tfstate"       
}
}

provider "azurerm" {
  features {
    
  }
}