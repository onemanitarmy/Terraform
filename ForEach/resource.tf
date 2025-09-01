module "local-net-gw" {
  source              = "../../modules/local-net-gw"
  
  # Process Resource List
  for_each = var.local-net-gw # Use for_each based on the variables below.

    name                = each.value.name
    resource_group_name = each.value.resource-group-name 
    location            = each.value.location
    gateway_address     = each.value.gateway-address
    address_space       = each.value.address-space
}