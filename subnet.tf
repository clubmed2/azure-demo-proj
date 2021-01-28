resource "azurerm_subnet" "user15-subnet1" {
    name = "user15-mysubnet1"
    resource_group_name = azurerm_resource_group.user15-rg.name
    virtual_network_name = azurerm_virtual_network.user15-vnet.name
    address_prefixes = ["15.0.1.0/24"]
}
