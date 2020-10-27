// Create RG and Use Backend RG Storage Account for State

resource "azurerm_resource_group" "rg_rbac" {
  name = "rg-rbac-${var.name}"
  location = var.location
}
