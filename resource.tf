resource "azurerm_resource_group" "user15-rg" {
	name = "user15resourcegroup"
	location = "koreasouth"

	tags = {
		environment = "Terraform Demo"
	}
}
