resource "azurerm_lb_probe" "user15-lb-probe" {
    resource_group_name = azurerm_resource_group.user15-rg.name
    loadbalancer_id = azurerm_lb.user15-lb.id
    name = "http-probe"
    protocol = "Http"
    request_path = "/"
    port = 80
}
