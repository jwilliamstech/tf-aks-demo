resource "azurerm_bastion_host" "bastion" {
  name                = var.bastion_name
  location            = var.bastion_location
  resource_group_name = var.bastion_rg_name
  sku                 = var.bastion_sku

  ip_configuration {
    name                 = "bastion-configuration"
    subnet_id            = var.bastion_subnet_id
    public_ip_address_id = azurerm_public_ip.bastion_pip.id
  }

}

resource "azurerm_public_ip" "bastion_pip" {
  name                = var.bastion_pip_name
  location            = var.bastion_location
  resource_group_name = var.bastion_rg_name
  allocation_method   = "Static"
  sku                 = "Standard"
}