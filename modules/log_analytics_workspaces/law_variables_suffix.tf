variable "law_rg_suffix" {
  type        = string
  default     = "rg"
  description = "Suffix of the resource group name that's combined with name of the resource group."
}

variable "log_analytics_workspace_suffix" {
  type        = string
  default     = "law"
  description = "Suffix of the log analytics workspace suffix resource."
}