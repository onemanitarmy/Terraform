# Retrieve existing Networking resources in Azure.
data "azurerm_virtual_network" "tfStateVNet" {
  name                = var.vnetName
  resource_group_name = var.rgCustomerNetworking
}

data "azurerm_subnet" "tfStateSubnet" {
  name                 = var.subnetName
  virtual_network_name = data.azurerm_virtual_network.tfStateVNet.name
  resource_group_name  = var.rgCustomerNetworking
}


### PRIVATE ENDPOINT ###

# Create Private Endpoint for Storage Account Blob to access it privately.
resource "azurerm_private_endpoint" "tfStatePrivateEndpoint" {
  name                = "${azurerm_storage_account.tfStateStorageAccount.name}pe0nic"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.tfStateResourceGroup.name
  subnet_id           = data.azurerm_subnet.tfStateSubnet.id

  # Create Private Service Connection to Storage Account Blob.
  private_service_connection {
    name                           = "WL${var.workload_id}-${var.env_letter}-tfstate-blob-private-connection"
    is_manual_connection           = false
    private_connection_resource_id = azurerm_storage_account.tfStateStorageAccount.id
    subresource_names              = ["blob"]
  }

  # Create Private DNS A Record for Storage Account Blob Private Endpoint in Central Hub for FQDN resolving.
  private_dns_zone_group {
    name                 = "default"
    private_dns_zone_ids = ["/subscriptions/SUBSCRIPTIONID/resourceGroups/RESOURCEGROUPNAME/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
  }
}
