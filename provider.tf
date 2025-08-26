terraform {
    backend "azurerm" {
        resource_group_name  = "amit"
        storage_account_name = "amitstrg1"
        container_name       = "amitcontainer"
        key                  = "terraform.tfstate"
      
    }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}
provider "azurerm" {
    features {}
    subscription_id = "f47677a8-89c6-4bf2-b96b-8bbcdd5fb6d9"
}