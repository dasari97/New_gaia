data "vsphere_datacenter" "datacenter" {
  name = var.datacenter
}

data "vsphere_datastore" "datastore" {
  name = var.datastore
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "vsphere_network" {
  name = var.network
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_resource_pool" "resource_pool" {
  name = var.resource_pool
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "template" {
  name = var.template_name
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_host" "host_name" {
  name = var.host_name
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

