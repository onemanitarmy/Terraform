# Name of Local Network Gateway
variable "name" {
  type = string
}

# Name of Location
variable "location" {
  type = string
}

# Name of Resource Group
variable "resource_group_name" {
  type = string
}

# Gateway IP-address
variable "gateway_address" {
  type = string
}

# Address Space 
variable "address_space" {
  type = list(string)
}