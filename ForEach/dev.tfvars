# Local Network Gateway
local-net-gw = {

  # VPN Connections (Site-to-Site)
  
  "local-network-gateway1" = {
    name = "local-network-gateway1"
    resource-group-name = "<your resource group name>"
    location = "westeurope"
    gateway-address = "100.100.100.1"
    address-space = ["192.168.1.0/24"]
  },
  
  "local-network-gateway2" = {
    name = "local-network-gateway2"
    resource-group-name = "<your resource group name>"
    location = "westeurope"
    gateway-address = "100.100.100.2"
    address-space = ["192.168.2.0/24"]
  }
  
}