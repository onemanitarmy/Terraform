# Resource Groups are by default created by another team or another pipeline.
# Mention Data blocks to reference existing resources (in this case the Resource Groups)
data "azurerm_resource_group" "this" {
  name = "<your existing resource group name>"
}

# Example creation of a Storage Account via Terraform.
# resource "azurerm_storage_account" "example" {
#   name                     = "<your storage account name>"
#   resource_group_name      = data.azurerm_resource_group.this.name
#   location                 = var.location # Variable value is defined in variables.tf (or you can hardcode it just as the name above)
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }
