variable "bastion_name" {
  description = "Specifies the name of the bastion host"
  type        = string
  #default = "tf-aks-demo-bastion"
}

variable "bastion_rg_name" {
  description = "Specifies the name of the resource group for the bastion host"
  type        = string
}

variable "bastion_subnet_id" {
  description = "Specifies the resource id of the bastion subnet"
  type        = string
}

variable "bastion_subnet_name" {
  description = "Specifies the name of the bastion subnet"
  type        = string
}

variable "bastion_location" {
  description = "Specifies the location of the bastion host"
  type        = string
}

variable "bastion_pip_name" {
  description = "Specifies the name of the public IP address for the bastion host"
  type        = string
  #default = "tf-aks-demo-bastion-pip"
}

variable "bastion_sku" {
  description = "Specifies the SKU of the bastion host"
  type        = string
  #default        = "basic"
}