output "law_rg_name" {
  description = "The name of the created Resource Group"
  value       = azurerm_resource_group.law.name
}

output "law_rg_id" {
  description = "The ID of the created Resource Group"
  value       = azurerm_resource_group.law.id
}

output "log_analytics_workspace_id" {
  description = "Specifies the resource id of the log analytics workspace"
  value       = azurerm_log_analytics_workspace.law.id
}

output "log_analytics_workspace_location" {
  description = "Specifies the location of the log analytics workspace"
  value       = azurerm_log_analytics_workspace.law.location
}

output "log_analytics_workspace_name" {
  description = "Specifies the name of the log analytics workspace"
  value       = azurerm_log_analytics_workspace.law.name
}

output "log_analytics_workspace_resource_group_name" {
  description = "Specifies the name of the resource group that contains the log analytics workspace"
  value       = azurerm_log_analytics_workspace.law.resource_group_name
}

output "log_analytics_workspace_workspace_id" {
  description = "Specifies the workspace id of the log analytics workspace"
  value       = azurerm_log_analytics_workspace.law.workspace_id
}

output "log_analytics_workspace_primary_shared_key" {
  description = "Specifies the workspace key of the log analytics workspace"
  value       = azurerm_log_analytics_workspace.law.primary_shared_key
  sensitive   = true
}