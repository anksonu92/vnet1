output "vnet"{
    description = "vnet & subnet details"
    value= {
        vnet_name=azurerm_virtual_network.example.name
        vnet_address_space=azurerm_virtual_network.example.address_space
        subnet1_name=azurerm_subnet.subnet1.name
        subnet1_id=azurerm_subnet.subnet1.id
        subnet1_address_prefixes=azurerm_subnet.subnet1.address_prefixes
        subnet2_name=azurerm_subnet.subnet2.name
        subnet2_id=azurerm_subnet.subnet2.id
        subnet2_address_prefixes=azurerm_subnet.subnet2.address_prefixes
        //storage_id=azurerm_storage_account.storage.id
        dns_name=azurerm_private_dns_zone.example.name
    }
}

