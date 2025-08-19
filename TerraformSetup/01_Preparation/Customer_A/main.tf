# Required Terraform version and provider configuration
# This file is used to define the required providers and their versions.
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
