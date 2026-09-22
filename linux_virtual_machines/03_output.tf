# output for my modules

output "linux_vm_id" {
    value = {
        for key, vm in azurerm_linux_virtual_machine.vm : key => vm.id
    }
}
