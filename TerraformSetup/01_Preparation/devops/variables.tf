# Example Variable of the location within Terraform.
variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "westeurope"
}
