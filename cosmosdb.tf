resource "azurerm_cosmosdb_account" "cdb" {
    name = var.cosmosdb_name
    resource_group_name = var.resource_group_name
    location = var.location
    offer_type = "Standard"
    geo_location {
      location = var.location
      failover_priority = 0
    }
    consistency_policy {
        consistency_level = "Strong"
    }
  capabilities {
    name = "EnableServerless"
  }


}