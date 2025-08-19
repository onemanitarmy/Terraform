# Retrieve current Azure Service Principal configuration that is being used in this pipeline to assign RBAC Role in file rbac_role_assignment.tf.
data "azurerm_client_config" "current" {}

# Assign Storage Blob Data Contributor role to the Service Principal write Terraform State to the Storage Account.
resource "azurerm_role_assignment" "tfStateRBACBlobDataStorageContributor" {
  principal_id         = data.azurerm_client_config.current.object_id
  role_definition_name = "Storage Blob Data Contributor"
  scope                = azurerm_storage_account.tfStateStorageAccount.id
  depends_on           = [azurerm_storage_account.tfStateStorageAccount]
}
