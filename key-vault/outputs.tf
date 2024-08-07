output "id" {
  value       = azurerm_key_vault.kv.id
  description = "The resource id of the key vault"
}

output "name" {
  value       = azurerm_key_vault.kv.name
  description = "The name of the key vault"
}

output "vault_uri" {
  value       = azurerm_key_vault.kv.vault_uri
  description = "The URI of the Key Vault, used for performing operations on keys and secrets."
}

output "location" {
  value       = azurerm_key_vault.kv.location
  description = "The location of the key vault"
}

output "tenant_id" {
  value       = azurerm_key_vault.kv.tenant_id
  description = "Tenant ID of the Key Vault"
}
