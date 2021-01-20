# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  alias = "east"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-eastus"
  location = "eastus"

  tags = {
        Environment = "Terraform Getting Started"
        Team = "DevOps"
    }
}
