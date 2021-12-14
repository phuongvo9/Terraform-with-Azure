#Explanation

* The terraform {} block is required. Terraform knows which provider (Azure, AWS, GCP,…) to download from the Terraform Registry
* The "azurerm" provider's source is defined as hashicorp/azurerm which stands for registry.terraform.io/providers/hashicorp/azurerm
# Reference the provider source documentation for more details
* The provider block is used to configure the named provider: azurerm in this case. It's used for creating and managing resources.

# Initialization
Let's initializes the local settings and data your new Terraform configuration by running the command in the same directory with "main.tf" file:
```
terraform init
```

# Plan
```
terraform plan
```

# Apply
```
terraform apply
```
