resource "azurerm_lb" "user15-lb" {
  name                    = "user15lb"
  location                = azurerm_resource_group.user15-rg.location
  resource_group_name     = azurerm_resource_group.user15-rg.name

  frontend_ip_configuration {
    name                  = "user15PublicIPAddress"
    public_ip_address_id   = azurerm_public_ip.user15-publicip.id
  }
}
