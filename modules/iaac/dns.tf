resource "azurerm_dns_zone" "dns" {
  name                = "app.contoso.com"
  resource_group_name = azurerm_resource_group.rg.name
}
