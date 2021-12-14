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

