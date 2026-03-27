// ========================== azure container registry =====================

variable "acr_name" {
  description = "(Required) Specifies the name of the Container Registry. Changing this forces a new resource to be created."
  type        = string
}

variable "acr_rg_name" {
  description = "(Required) The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created."
  type        = string
}

variable "acr_location" {
  description = "Location in which to deploy the Container Registry"
  type        = string
  #default     = "West US"
}

variable "acr_admin_enabled" {
  description = "(Optional) Specifies whether the admin user is enabled. Defaults to false."
  type        = string
  default     = false
}

variable "acr_sku" {
  description = "(Optional) The SKU name of the container registry. Possible values are Basic, Standard and Premium. Defaults to Basic"
  type        = string
  #default     = "Basic"

  validation {
    condition     = contains(["Basic", "Standard", "Premium"], var.acr_sku)
    error_message = "The container registry sku is invalid."
  }
}
variable "acr_georeplication_locations" {
  description = "(Optional) A list of Azure locations where the container registry should be geo-replicated."
  type        = list(string)
  #default     = ["Central US", "West US"]
}

/*variable "acr_log_analytics_retention_days" {
  description = "Specifies the number of days of the retention policy"
  type        = number
  #default     = 7
}*/

variable "acr_tags" {
  description = "(Optional) Specifies the tags of the ACR"
  type        = map(any)
  default     = {}
}
variable "acr_data_endpoint_enabled" {
  description = "(Optional) Whether to enable dedicated data endpoints for this Container Registry? Defaults to false. This is only supported on resources with the Premium SKU."
  type        = bool
  #default     = true
}
variable "pe_acr_subresource_names" {
  description = "(Optional) Specifies a subresource names which the Private Endpoint is able to connect to ACR."
  type        = list(string)
  #default     = ["registry"]
}

#modules/log_analytics_workspace/law_outputs.tf/azurerm_log_analytics_workspace.workspace_id
variable "output_law_id" {
  description = "Workspace id from law module outputs"
  #type        = string
}

variable "hub_vnet_rg_name" {
  description = "The name of the resource group in which the virtual network is located"
  type        = string
}

variable "hub_vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "hub_vnet_id" {
  description = "The ID of the virtual network"
  type        = string
}

variable "bastion_subnet_id" {
  description = "Specifies the resource id of the bastion subnet"
  type        = string
}