# Provider Details to use in Terraform configuration.
# This file is used to configure the AzureRM provider for Terraform.
# Link: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}

provider "azurerm" {
  features {}
}

/*

TO DO

USE CASE
- Customer requests new landing zone and must include a private endpoint subnet for storage accounts / key vaults.
- Customer then requests a firewall rule to allow Azure DevOps agents to access the private endpoint subnet.
- Customer follows the Terraform documentation tutorial (written by me) how to setup Terraform in the New Landing Zone.

Alexander mentions that storage account will not be allowed to have public access (policy).

# Mert in Acceptance Landing Zone that needs to be implemented to test it out.
Create VNet and Subnet (for Private Endpoints)
Whitelist Firewall rule to allow Azure DevOps agents to Private Endpoints Subnet

# Preparation.yaml
1. Add Custom Agent Pools in Pipeline (Use Build Pool)
2. Disable Storage Account Public Access in Preparation.yaml and put it in the code after the creation of the Storage Account.
3. Create Private Endpoint on Storage Account

# Terraform_plan_and_apply.yaml
1. Add Custom Agent Pools in Pipeline (Use Build Pool)
2. Add Terraform Show just as what Vincent has implemented (no ManualValidation)

# Terraform Code
1. Add Backend Configuration for Terraform State (Azure Storage Account)

# Update documentation
# Update documentation (prerequisites, backend configuration etc.)

*/
