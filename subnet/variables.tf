variable "name" {
  description = "(Required) The name of the subnet. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "(Required) Specifies the name of the resource group."
  type        = string
}

variable "virtual_network_name" {
  description = "(Required) The name of the virtual network in which the subnet is created in. Changing this forces a new resource to be created."
  type        = string
}

variable "address_prefixes" {
  description = "(Required) The address prefixes for the subnet."
  type        = list(string)
}

variable "private_endpoint_network_policies_enabled" {
  description = "(Optional) Enable or Disable network policies for the private endpoint on the subnet. Setting this to true will Enable the policy and setting this to false will Disable the policy. Defaults to true."
  type        = bool
  default     = true
}

variable "private_link_service_network_policies_enabled" {
  description = "(Optional) Enable or Disable network policies for the private link service on the subnet. Setting this to true will Enable the policy and setting this to false will Disable the policy. Defaults to true."
  type        = bool
  default     = true
}

variable "service_endpoints" {
  description = "(Optional) The list of Service endpoints to associate with the subnet. Possible values include: Microsoft.AzureActiveDirectory, Microsoft.AzureCosmosDB, Microsoft.ContainerRegistry, Microsoft.EventHub, Microsoft.KeyVault, Microsoft.ServiceBus, Microsoft.Sql, Microsoft.Storage, Microsoft.Storage.Global and Microsoft.Web."
  type        = list(string)
  default     = []
}

variable "service_endpoint_policy_ids" {
  description = "(Optional) The list of Service endpoint policy IDs to associate with the subnet."
  type        = list(string)
  default     = []
}

variable "delegations" {
  description = "(Optional) The name of service to delegate to subnet."
  type = object({
    name = string
    service_delegation = optional(object({
      name    = string
      actions = list(string)
    }))
  })
  default = null
}
