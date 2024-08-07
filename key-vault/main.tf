resource "azurerm_key_vault" "kv" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  tenant_id                     = var.aad_tenant_id
  tags                          = var.tags
  sku_name                      = var.sku_name
  soft_delete_retention_days    = 7
  public_network_access_enabled = var.public_network_access_enabled
  purge_protection_enabled      = var.purge_protection_enabled

  access_policy {
    tenant_id               = var.aad_tenant_id
    object_id               = var.aad_object_id
    key_permissions         = var.key_permissions
    secret_permissions      = var.secret_permissions
    certificate_permissions = var.certificate_permissions
  }

  dynamic "network_acls" {
    for_each = (var.public_network_access_enabled && var.network_filter_access_enabled) ? [1] : []
    content {
      default_action             = max(length(var.ip_rules), length(var.virtual_network_subnet_ids)) > 0 ? "Deny" : var.default_action
      ip_rules                   = var.ip_rules
      virtual_network_subnet_ids = var.virtual_network_subnet_ids
      bypass                     = var.network_bypass
    }
  }

  lifecycle {
    ignore_changes = [
      tags,
      access_policy,
    ]
  }
}
