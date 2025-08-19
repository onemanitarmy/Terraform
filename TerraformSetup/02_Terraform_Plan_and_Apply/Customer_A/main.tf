# Provider Details to use in Terraform configuration.
# This file is used to configure the AzureRM provider for Terraform.
# More info: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
  backend "azurerm" {} # Backend configuration is stored in the pipeline variables.
}

provider "azurerm" {
  features {}
}
