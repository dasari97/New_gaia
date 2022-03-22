variable "vpshere_user" {
  default = "dasari.krishna@betsol.com"
}

variable "vpshere_password" {
  default = "9494342038@aA"
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
  default = "192.168.53.11/Resources"
}

variable "host_name" {}

variable "template_name" {}

variable "vm_count" {}

variable "vm_name" {
    type = list
}

variable "cpu_required" {}

variable "memory_required" {}

variable "disk_name_1" {}

variable "disk_size_1" {}

variable "disk_name_2" {}

variable "disk_size_2" {}