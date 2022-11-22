variable "resource_group_name" {
  description = "The name of the resource group where modules resources will be deployed. The resource group location will be used for all resources in this module as well."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be deployed."
  type        = string
}


variable "vnet" {
  description = "the vnet configuration"
  type = object({
    name          = string
    address_space = list(string)
  })
  default = {
    address_space = ["10.0.0.0/16"]
    name          = "lens-vnet"
  }
}

variable "subnet1" {
  description = "the subnet configuation details"
  type = object({
    name             = string
    addrs_prefix = list(string)
  })

  default = {
    addrs_prefix = ["10.0.1.0/24"]
    name             = "subnet1"
  }
}

variable "subnet2" {
  description = "the subnet configuation details"
  type = object({
    name             = string
    addrs_prefix = list(string)
  })

  default = {
    addrs_prefix = ["10.0.2.0/24"]
    name             = "subnet2"
  }
}