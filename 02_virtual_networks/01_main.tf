# virtual networks definitions

resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnets
  name                = each.value.name
  resource_group_name = module.resource_groups.resource_group_name["rg1"]
  location            = module.resource_groups.resource_group_location["rg1"]
  address_prefixes    = each.value.address_prefixes
}
