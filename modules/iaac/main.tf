// Create RG and Use Backend RG Storage Account for State

resource "azurerm_resource_group" "rg" {
  name = "rg-${var.name}-${var.environment}"
  location = var.location
}


