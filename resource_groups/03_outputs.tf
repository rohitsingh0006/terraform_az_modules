# output for my modules

output "resource_group_id" {
  value = {
    for key, rg in azurerm_resource_group.rg : key => rg.id
  }
}

output "resource_group_name" {
  value = {
    for key, rg in azurerm_resource_group.rgs : key => rg.name
  }
}

output "resource_group_location" {
  value = {
    for key, rg in azurerm_resource_group.rgs : key => rg.location
  }
}
