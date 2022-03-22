output "Name_of_VM" {
  value = resource.vsphere_virtual_machine.vm.*.name  
}

output "VM_IP" {
  value = resource.vsphere_virtual_machine.vm.*.default_ip_address
}