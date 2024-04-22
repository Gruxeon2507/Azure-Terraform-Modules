variable "name" {
  description = "(Required) Specifies the name of the AKS cluster."
  type        = string
}

variable "resource_group_name" {
  description = "(Required) Specifies the name of the resource group."
  type        = string
}

variable "location" {
  description = "(Required) Specifies the location where the AKS cluster will be deployed."
  type        = string
}

variable "tags" {
  description = "(Optional) Specifies the tags of the kubernetes cluster"
  type        = map(any)
  default     = {}
}

variable "preview_environments_enabled" {
  description = "(Optional) Is preview environments enabled for this Static Web App?. Defaults to true"
  type        = bool
  default = true
}

variable "sku_tier" {
  description = "(Optional) Defines which tier to use. Options are Free, Basic, Standard or Premium. Defaults to Free"
  type        = string
  default     = "Free"  
}

variable "sku_size" {
  description = "(Optional) Specifies the SKU size of the Static Web App. Possible values are Free or Standard. Defaults to Free."
  type        = string
  default = "Free"
}