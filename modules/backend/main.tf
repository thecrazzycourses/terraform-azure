// Create RG and Storage Account in that

provider "azurerm" {
  features {}
}

variable "location" {
  default = "centralus"
}

variable "environment" {
  default = "default"
}

resource "azurerm_resource_group" "rg_backend" {
  location = var.location
  name = "rg-backend-${var.environment}"
  tags = {
    application: "ecom"
  }
}

resource "azurerm_storage_account" "st_backend" {
  name = "storagebackendshared"
  location = var.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  resource_group_name = azurerm_resource_group.rg_backend.name
  tags = {
    application: "ecom"
  }
}

