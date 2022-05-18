output "firmware_type" {
  value = data.vsphere_virtual_machine.template.firmware
}

output "Name_of_VM" {
  value = resource.vsphere_virtual_machine.vm.*.name  
}