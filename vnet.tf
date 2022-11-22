resource "azurerm_virtual_network" "example" {
  name                = var.vnet.name
  address_space       = var.vnet.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
}

# we will create VM in this subnet
resource "azurerm_subnet" "subnet1" {
  name                                           = var.subnet1.name
  resource_group_name                            = var.resource_group_name
  virtual_network_name                           = azurerm_virtual_network.example.name
  address_prefixes                               = var.subnet1.addrs_prefix //["10.0.1.0/24"]
  enforce_private_link_endpoint_network_policies = true
}

# we will create private endpoint in this subnet
resource "azurerm_subnet" "subnet2" {
  name                 = var.subnet2.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = var.subnet2.addrs_prefix //["10.0.2.0/24"]

  enforce_private_link_endpoint_network_policies = true
}

