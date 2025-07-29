terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "backend1_rg"
    storage_account_name = "backendstga1"
    container_name       = "backend-container"
    key                  = "dev.tfstate"
    subscription_id      = "93b568fd-bf85-44bc-8f71-c314751c396d"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "93b568fd-bf85-44bc-8f71-c314751c396d"
}