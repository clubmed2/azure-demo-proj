resource "azurerm_lb_backend_address_pool" "user15-bpepool" {
    name = "user15-BackEndAddressPool"
    resource_group_name = azurerm_resource_group.user15-rg.name
    loadbalancer_id     = azurerm_lb.user15-lb.id
}
