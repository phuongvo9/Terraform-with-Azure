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
  description = "the default location of the resource"
}

variable "prefix-name" {
    type = string
    description = "The prefix that should attach to all resources"
}

variable "storage_account_kind" {
  type =string
  description = "Kind: BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2"
  default = "StorageV2"
}


variable "storage_account_tier" {
  type = string
  description = "Standard and Premium. (BlockBlobStorage and FileStorage accounts only for Premium)"
  default = "Standard"
}

variable "storage_account_account_replication_type" {
    type = string
    description = "Type of replication: LRS, GRS, RA-GRS, ZRS"
    default = "LRS"
}

variable "storage_account_access_tier" {
    type = string
    description = "Access Tier: Hot or Cool"
    default = "Hot"
}


#--------------------- RESOURCE ---------------------------------
resource "azurerm_resource_group" "example" {
    name = "terraform-resourcegroup"
    location = var.location
}
resource "azurerm_storage_account" "example" {
    name = "${var.prefix-name}-storageaccount"
    resource_group_name = azurerm_resource_group.example.name
    location = azurerm_resource_group.example.location

}