output "id" {
    description = "The Static Web App ID."
    value       = azurerm_static_web_app.static_web_app.id
}

output "api_key" {
    description = "The Static Web App API Key."
    value       = azurerm_static_web_app.static_web_app.api_key
}

output "default_host_name" {
    description = "The Static Web App default hostname."
    value       = azurerm_static_web_app.static_web_app.default_host_name
}