resource "azurerm_subnet" "subnet" {
  name                                          = var.name
  resource_group_name                           = var.resource_group_name
  virtual_network_name                          = var.virtual_network_name
  address_prefixes                              = var.address_prefixes
  private_endpoint_network_policies_enabled     = var.private_endpoint_network_policies_enabled
  private_link_service_network_policies_enabled = var.private_link_service_network_policies_enabled
  service_endpoints                             = var.service_endpoints
  service_endpoint_policy_ids                   = var.service_endpoint_policy_ids

  dynamic "delegation" {
    for_each = var.delegations != null ? [var.delegations] : []
    content {
      name = delegations.value.name
      service_delegation {
        name    = delegations.value.service_delegation.name
        actions = delegations.value.service_delegation.actions
      }
    }
  }
}