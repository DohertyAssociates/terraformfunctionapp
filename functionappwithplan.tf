resource "azurerm_storage_account" "fnappstorage" {
  name = "${var.function_app_name}storage"
  resource_group_name = var.resource_group_name
  location = var.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_service_plan" "fnappplan" {
    name = var.app_service_plan_name
    resource_group_name = azurerm_resource_group.rg.name
    location = var.location
    os_type = "Windows"
    sku_name = "Y1"
}

resource "azurerm_windows_function_app" "fnapp" {
  name = var.function_app_name
  resource_group_name = var.resource_group_name
  location = var.location
  service_plan_id = azurerm_service_plan.fnappplan.id
  storage_account_name = azurerm_storage_account.fnappstorage.name
  storage_account_access_key = azurerm_storage_account.fnappstorage.primary_access_key
  site_config {
    
  }
}

