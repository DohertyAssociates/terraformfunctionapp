variable "location" {
  description = "The default Azure region for the resource provisioning"
}

variable "resource_group_name" {
  description = "Resource group name that will contain various resources"
}

variable "function_app_name" {
    description = "Name of function app - must be globally unique (becomes hostname.azurewebsites.net)"
}

variable "cosmosdb_name" {
  description = "Name of CosmosDB account - must be globally unique (becomes hostname.documents.azure.com)"
}

variable "static_app_name" {
    description = "Name of static web app - (not globally unique)"
}

variable "app_service_plan_name" {
    description = "Name of app services plan (not globally unique)"
}

variable "azuread_client_id" {
    description = "Azure AD client ID used for app services authentication"
}

variable "key_vault_name" {
    description = "Name of key vault - globally unique (becomes hostname.vault.azure.net)"
}