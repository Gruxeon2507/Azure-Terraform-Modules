output "id" {
  description = "The virtual NetworkConfiguration ID."
  value       = azurerm_virtual_network.vnet.id
}

output "name" {
  description = " (Required) The name of the virtual network. Changing this forces a new resource to be created."
  value       = azurerm_virtual_network.vnet.name
}

output "address_space" {
  description = "(Required) The list of address spaces used by the virtual network."
  value       = azurerm_virtual_network.vnet.address_space
}

output "guid" {
  description = "The GUID of the virtual network."
  value       = azurerm_virtual_network.vnet.guid
}
