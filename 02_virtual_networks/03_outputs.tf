# output for my modules

output "resource_group_id" {
  value = {
    for key, vnet in azurerm_virtual_network.vnet : key => vnet.id
  }
}
