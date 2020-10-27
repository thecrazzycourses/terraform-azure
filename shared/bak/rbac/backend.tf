terraform {
  backend "azurerm" {
    resource_group_name = "rg-backend-shared"
    storage_account_name = "storagebackendshared"
    container_name = "tfstate"
    key = "rbac.terraform.state"
  }
}
