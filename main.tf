resource "azurerm_container_registry" "acr" {
  name                = lower("${var.acr_name}") #use only lower case
  resource_group_name = var.resource_group_name
  location            = var.resource_location
  sku                 = var.acr_sku
  admin_enabled       = var.acr_admin_enabled_status
  tags = {
    environment = var.env_name,
    product     = var.product_name
  }
}