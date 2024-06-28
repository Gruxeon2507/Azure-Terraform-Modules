resource "azurerm_storage_account" "storage_account" {
  name                = var.name
  resource_group_name = var.resource_group_name

  location                 = var.location
  account_kind             = var.account_kind
  account_tier             = var.account_tier
  account_replication_type = var.replication_type
  is_hns_enabled           = var.is_hns_enabled

  dynamic "static_website" {
    for_each = var.enable_static_website ? [var.static_website] : []
    content {
      index_document = static_website.value.index_document
      error_404_document = static_website.value.error_404_document
    }
  }

  dynamic "custom_domain" {
    for_each = var.enable_custom_domain ? [var.custom_domain] : []
    content {
      name = custom_domain.value.name
      use_subdomain = custom_domain.value.use_sub_domain
    }
  }

  dynamic "network_rules" {
    for_each = (var.network_filter_access_enabled && var.public_network_access_enabled) ? [1] : []
    content {
      default_action             = max(length(var.ip_rules), length(var.virtual_network_subnet_ids)) > 0 ? "Deny" : var.default_action
      ip_rules                   = var.ip_rules
      virtual_network_subnet_ids = var.virtual_network_subnet_ids
      bypass                     = var.network_bypass
    }
  }

  public_network_access_enabled = var.public_network_access_enabled

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}


