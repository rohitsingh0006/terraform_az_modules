# output for my modules

output "virtual_network_id" {
  value = {
    for key, vnet in azurerm_virtual_network.vnet : key => vnet.id
  }
}
