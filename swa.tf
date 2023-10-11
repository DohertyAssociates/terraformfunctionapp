// the azurerm_static site provider doesn't support linked backends currently so this will need to be created manually
resource "azurerm_static_site" "swa" {
  name                = var.static_app_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_size = "Standard"
  sku_tier = "Standard"
  depends_on = [ azurerm_windows_function_app.fnapp]
}