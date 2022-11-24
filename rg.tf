variable "resource_group_name" {
  description = "The name of the resource group where modules resources will be deployed. The resource group location will be used for all resources in this module as well."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be deployed."
  type        = string
}


/*resource "azurerm_resource_group" "example" {
  location = var.location
  name     = var.resource_group_name
}*/

