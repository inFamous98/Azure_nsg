resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "nsg" {
  source              = "./nsg"
  resource_group_name = var.resource_group_name
  nsgs                = var.nsgs
}
