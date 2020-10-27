terraform {
  backend "azurerm" {
    resource_group_name = "rg-backend"
    storage_account_name = "storagebackendshared"
    container_name = "tfstate"
    key = "dev.terraform.state"
  }
}
