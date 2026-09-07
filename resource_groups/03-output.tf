# output for my modules

output "resource_group_id" {
  value = {
    for key, rg in azurerm_resource_group.rg : key => rg.id
  }
}
