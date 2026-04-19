output "appgtw_name" {
  description = "Specifies the name of the app gateway."
  value       = azurerm_application_gateway.appgtw.name
}

output "appgtw_id" {
  description = "Specifies the ID of the app gateway."
  value       = azurerm_application_gateway.appgtw.id
}