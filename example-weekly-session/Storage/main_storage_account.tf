#--------------------- PROVIDER ---------------------------------
terraform {
    required_providers {
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

#--------------------- VARIABLE ---------------------------------
variable "location" {
  type = string
  default = "East Asia"
}

variable "prefix-name" {
    type = string
    description = "The prefix that should attach to all resources"
}

#--------------------- RESOURCE ---------------------------------
resource "azurerm_resource_group" "example" {
    name = "terraform-resourcegroup"
    location = var.location
}