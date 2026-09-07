# virtual networks definitions

resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnets
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  address_prefixes    = each.value.address_prefixes
}
