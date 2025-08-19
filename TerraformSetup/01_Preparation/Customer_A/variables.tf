# Variables for Terraform configuration
variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "westeurope"
}

variable "rgSHGNetworking" {
  description = "The name of the Resource Group where networking resources are located."
  type        = string
  default     = "SHG-Networking"
}

# Variables defined here below are declared in the preparation.yaml file under task Terraform Plan.
# See it as the that .tfvars file is replaced for the preparation.yaml file.
variable "workload_id" {
  description = "The workload type for the Terraform deployment."
  type        = string
}

variable "env_letter" {
  description = "The environment type for the Terraform deployment (e.g., dev, prod)."
  type        = string
}

variable "env_number" {
  description = "The environment type for the Terraform deployment (e.g., dev, prod)."
  type        = string
}

variable "vnetName" {
  description = "The name of the Virtual Network where the Private Endpoint will be created."
  type        = string
}

variable "subnetName" {
  description = "The name of the Subnet where the Private Endpoint will be created."
  type        = string
}
