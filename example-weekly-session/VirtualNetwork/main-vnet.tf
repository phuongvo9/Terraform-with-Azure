terraform {
    required_provider {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "=2.71.0"
        }
    }
}

# Configure the Microsoft Azure Provider

provider "azurerm" {
  features {}

}


resource "azurerum_resource_group" "example" {
    name = "terraform-resourcegroup"
    location = "East Asia"
  
}

# Create a virtual network in that resource group
resource "azurerm_virtual_network" "example-vnet" {
    name = "example-vnet"
    resource_group_name = azurerum_resource_group.example.name
    location = azurerum_resource_group.example.location
    address_space = ["10.0.0.0/16"]
}

