/*terraform {
  required_version = "~> 1.1"

  required_providers {
    azurerm = {
      source  = "registry.terraform.io/hashicorp/azurerm"
      version = "~> 3.9"
    }
  }

}

provider "azurerm" {
  storage_use_azuread        = true
  skip_provider_registration = false
  features {
    key_vault {
      purge_soft_delete_on_destroy    = false
      recover_soft_deleted_key_vaults = false
    }
  }
}

resource "azurerm_resource_group" "test" {
  location = "eastus2"
  name     = "lens-databricks-test"
}

module "lens_vnet" {
  source = "../../"

  resource_group_name = azurerm_resource_group.test.name
  location            = azurerm_resource_group.test.location
}

output "vnet" {
  value = module.lens_vnet.vnet

}*/