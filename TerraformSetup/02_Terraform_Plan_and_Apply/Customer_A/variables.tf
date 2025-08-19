# Example Variable of the location within Terraform. that is referenced in the example_resource.tf file.
variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "westeurope"
}

