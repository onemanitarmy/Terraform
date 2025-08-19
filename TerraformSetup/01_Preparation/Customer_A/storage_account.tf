# Get existing Resource Group name in Azure where Terraform State will be stored.
# Another team creates the Resource Groups beforehand so I have to refer the data block here.
# Mandatory to use 1000 and 4000 in the Resource Group.
data "azurerm_resource_group" "tfStateResourceGroup" {
  name = "az${var.workload_id}${var.env_letter}rg0${var.env_number}00"
}

### STORAGE ACCOUNT ###

# Create Storage Account for Terraform State
resource "azurerm_storage_account" "tfStateStorageAccount" {
  name                          = "az${var.workload_id}${var.env_letter}st0${var.env_number}00"
  resource_group_name           = data.azurerm_resource_group.tfStateResourceGroup.name
  location                      = var.location
  account_tier                  = "Standard"
  account_replication_type      = "LRS"
  public_network_access_enabled = false
}

# Create Blob Container store Terraform .tfstate file.
resource "azurerm_storage_container" "tfStateBlobContainer" {
  name                  = "terraform"
  storage_account_id    = azurerm_storage_account.tfStateStorageAccount.id
  container_access_type = "private"
  depends_on            = [azurerm_storage_account.tfStateStorageAccount]
}
