variable "acr_suffix" {
  type        = string
  default     = "acr"
  description = "Suffix of the Azure Container Registry (ACR) name that's combined with name of the ACR"
}

variable "pe_suffix" {
  type        = string
  default     = "pe"
  description = "Suffix of the private endpoint name"
}