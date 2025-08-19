# This file is where you mention existing Resources in Azure that was not deployed in this repository.
# Since Resource Groups are by default created by another team or department, you have to mention them here.
# Mention Data blocks to reference existing resources (in this case the Resource Groups)
data "azurerm_resource_group" "this" {
  name = "<your resource group name" # Replace with the name of your Resource Group where do you want to deploy the resources.
}
