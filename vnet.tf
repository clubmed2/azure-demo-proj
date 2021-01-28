resource "azurerm_virtual_network" "user15-vnet" {
	name 			= "user15-myVnet"
	address_space 		= ["15.0.0.0/16"]
	location 			= azurerm_resource_group.user15-rg.location
	resource_group_name	= azurerm_resource_group.user15-rg.name
}
