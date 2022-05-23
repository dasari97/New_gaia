provider "vsphere" {
user = var.vpshere_user
password = var.vpshere_password
vsphere_server = var.vpshere_server

#If yoy have a self-signed certificate Mention true else false.
allow_unverified_ssl = true
}



resource "vsphere_virtual_machine" "vm" {
  count = var.vm_count
  name = element(var.vm_name, count.index)
  resource_pool_id = data.vsphere_resource_pool.resource_pool.id
  datastore_id = data.vsphere_datastore.datastore.id
  host_system_id = data.vsphere_host.host_name.id

  firmware = data.vsphere_virtual_machine.template.firmware
  efi_secure_boot_enabled = data.vsphere_virtual_machine.template.firmware == "bios" ? false : true  #Should be marked as true if firmware is "efi".
  
  wait_for_guest_net_timeout = 0
  
  num_cpus = var.cpu_required
  memory = var.memory_required
  guest_id = data.vsphere_virtual_machine.template.guest_id
  scsi_type = data.vsphere_virtual_machine.template.scsi_type

  network_interface {
    network_id = data.vsphere_network.vsphere_network.id
    adapter_type = "vmxnet3"
  }

  disk {
    label = var.disk_name_1
    thin_provisioned = true
    size = var.disk_size_1
  }

#Uncomment the below block if you want to add addition secondary disk. And provide the respective values in vars/values.tfvars file.

  # disk {
  #   label = var.disk_name_2
  #   thin_provisioned = false
  #   eagerly_scrub = true
  #   size = var.disk_size_2
  # }
  
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
  }

}
