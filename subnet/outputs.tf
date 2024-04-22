output "id" {
  description = "The ID of the Subnet."
  value       = azurerm_subnet.subnet.id
}

output "name" {
  description = "The name of the Subnet."
  value       = azurerm_subnet.subnet.name
}

output "virtual_network_name" {
  description = "The name of the Virtual Network where the Subnet is created."
  value       = azurerm_subnet.subnet.virtual_network_name
}

output "address_prefixes" {
  description = "The address prefixes for the subnet."
  value       = azurerm_subnet.subnet.address_prefixes
}