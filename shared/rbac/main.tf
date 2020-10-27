// Create RG and Use Backend RG Storage Account for State

resource "azurerm_resource_group" "rg_rbac" {
  name = "rg-rbac-${var.name}"
  location = var.location
}

// App Registration
resource "azuread_application" "az_ad_app" {
  name = "az-sp-ecom"
  homepage = "http://az-sp-ecom"
  identifier_uris = ["http://az-sp-ecom"]
  reply_urls = ["http://az-sp-ecom"]
  available_to_other_tenants = false
  oauth2_allow_implicit_flow = true
}

// Create Service Principal
resource "azuread_service_principal" "az_sp" {
  application_id = azuread_application.az_ad_app.application_id
  app_role_assignment_required = false
}

