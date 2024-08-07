variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created."
  type        = string
}

variable "name" {
  description = "(Required) Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name."
  type        = string
}

variable "location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "tags" {
  description = "(Optional) Specifies the tags of the key vault."
  type        = map(any)
  default     = {}
}

variable "sku_name" {
  description = "(Optional) The Name of the SKU used for this Key Vault. Possible values are standard and premium. Defaults to standard."
  type        = string
  default     = "standard"
}

variable "certificate_permissions" {
  description = "(Optional) List of certificate permissions"
  type        = list(string)
  default = [
    "Get",
    "List",
    "Update",
    "Create",
    "Import",
    "Delete",
    "Recover",
    "Backup",
    "Restore",
    "ManageContacts",
    "ManageIssuers",
    "GetIssuers",
    "ListIssuers",
    "SetIssuers",
    "DeleteIssuers",
    "Purge",
  ]
}

variable "key_permissions" {
  description = "(Optional) List of key permissions"
  type        = list(string)
  default = [
    "Create",
    "Get",
    "List",
    "Update",
    "Import",
    "Delete",
    "Recover",
    "Backup",
    "Restore",
    "GetRotationPolicy",
    "SetRotationPolicy",
    "Rotate",
    "Encrypt",
    "Decrypt",
    "UnwrapKey",
    "WrapKey",
    "Verify",
    "Sign",
    "Purge",
    "Release",
  ]
}

variable "secret_permissions" {
  description = "(Optional) List of key permissions"
  type        = list(string)
  default = [
    "Set",
    "Get",
    "Delete",
    "Purge",
    "Recover",
    "List",
    "Backup",
    "Restore",
  ]
}

variable "aad_tenant_id" {
  description = "(Required) Specifies the tenant id of the Azure Active Directory."
  type        = string
}

variable "aad_object_id" {
  description = "(Required) Specifies the object id of the Azure Active Directory."
  type        = string
}

variable "default_action" {
  description = "Allow or disallow public access to vault secrets."
  default     = "Deny"
  type        = string
}

variable "ip_rules" {
  description = "Specifies IP rules for the key vault."
  default     = []
  type        = list(string)
}

variable "virtual_network_subnet_ids" {
  description = "Specifies a list of resource ids for subnets."
  default     = []
  type        = list(string)
}

variable "network_bypass" {
  description = "(Optional) Specifies whether traffic is bypassed. Possible values are AzureServices and None."
  default     = "AzureServices"
  type        = string
}

variable "public_network_access_enabled" {
  description = "Specifies whether or not public network access is allowed for the key vault."
  default     = true
  type        = bool
}

variable "purge_protection_enabled" {
  description = "Specifies whether protection against purge is enabled for this vault."
  default     = true
  type        = bool
}

variable "network_filter_access_enabled" {
  description = "Specifies whether the network rule is enabled."
  default     = false
  type        = bool
}