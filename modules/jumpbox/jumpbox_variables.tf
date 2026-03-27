variable "jumpbox_rg_name" {
  description = "Name of the resource group the jumpbox will be deployed into."
  type        = string
}

variable "jumpbox_location" {
  description = "Location the jumpbox will be deployed into."
  type        = string
}

variable "jumpbox_admin_username" {
  description = "Admin username for the jumpbox VM."
  type        = string
  sensitive   = true
}

variable "jumpbox_admin_password" {
  description = "Admin password for the jumpbox VM."
  type        = string
  sensitive   = true
}

variable "jumpbox_subnet_id" {
  description = "ID of the subnet where the jumpbox will be deployed."
  type        = string
}

variable "nsg_allowed_ip_range" {
  description = "IP range allowed to connect to the jumpbox NSG."
  type        = string
}



variable "default_tags" {
  type = map(any)
  default = {
    "Project"   = "TF-AKS-Demo"
    "Owner"     = "Joshua Williams"
    "CreatedBy" = "Joshua Williams"
  }
}