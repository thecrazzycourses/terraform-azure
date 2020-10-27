// Create RG and Storage Account in that

provider "azurerm" {
  features {}
}

variable "location" {
  default = "centralus"
}

resource "azurerm_resource_group" "rg_backend" {
  location = var.location
  name = "rg-backend"
}

resource "azurerm_storage_account" "st_backend" {
  name = "storagebackendshared"
  location = var.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  resource_group_name = azurerm_resource_group.rg_backend.name
}

resource "azurerm_storage_container" "st_container" {
  name = "tfstate"
  storage_account_name = azurerm_storage_account.st_backend.name
}
