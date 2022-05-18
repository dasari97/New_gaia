variable "vpshere_user" {
  default = null
}

variable "vpshere_password" {
  default = null
}

variable "vpshere_server" {
  default = "192.168.53.20"
}

variable "datacenter" {
  default = "US-LAB"
}

variable "datastore" {}

variable "network" {
  default = "VM Network"
}

variable "resource_pool" {
}

variable "host_name" {}

variable "template_name" {}

variable "vm_count" {}

variable "vm_name" {
    type = list
}

variable "vm_snap_name" {
    type = list
    default = null
}

variable "efi_mode" {
  type = bool
}

variable "cpu_required" {}

variable "memory_required" {}

variable "disk_name_1" {}

variable "disk_size_1" {}

variable "disk_name_2" {}

variable "disk_size_2" {}