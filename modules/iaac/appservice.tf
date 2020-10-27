resource "azurerm_app_service_plan" "appservice_plan" {
  name                = "${var.name}-appserviceplan-${var.environment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  kind = "Linux"
  reserved = true

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "example" {
  name                = "${var.name}-appservice-${var.environment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.appservice_plan.id
  https_only = false

  app_settings = {
    "SOME_KEY" = "some-value"
  }
}
