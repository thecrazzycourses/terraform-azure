resource "azurerm_container_registry" "acr" {
  location = var.location
  name = "acr${var.name}${var.environment}"
  resource_group_name = azurerm_resource_group.rg.name
  sku = "Standard"
  admin_enabled = true
}
