resource "azurerm_network_security_group" "user15nsg" {
    name                = "user15nsg"
    location            = azurerm_resource_group.user15-rg.location
    resource_group_name = azurerm_resource_group.user15-rg.name

    security_rule {
        name                       = "SSH"
        priority                   = 1015
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
 security_rule {
        name                       = "HTTP"
        priority                   = 2015
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    tags = {
        environment = "Terraform Demo"
    }
}
