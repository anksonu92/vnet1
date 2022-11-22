resource "azurerm_storage_account" "storage" {
  name                     = format("%s%s", "fdssdfd", "storage9553")
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  network_rules {
      default_action = "Deny"
      ip_rules = ["192.168.1.31"]
  }
}