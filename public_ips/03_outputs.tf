# output for my modules

output "pip_id" {
    value = {
        for key, subnet in azurerm_public_ip : key => pip.id
    }
}
