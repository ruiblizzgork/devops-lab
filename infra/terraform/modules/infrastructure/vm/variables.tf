variable "name" {
  type = string
}

variable "memory_mib" {
  type = number
}

variable "vcpu" {
  type = number
}

variable "loader_file_path" {
  type    = string
  default = "/usr/share/edk2/x64/OVMF_CODE.secboot.4m.fd"
}

variable "nvram_file_path" {
  type    = string
  default = "/var/lib/libvirt/qemu/nvram/uefi-vm.fd"
}

variable "nvram_template_file_path" {
  type    = string
  default = "/usr/share/edk2/x64/OVMF_VARS.4m.fd"
}

variable "system_disk_id" {
  type = string
}

variable "cloudinit_disk_id" {
  type = string
}

variable "network_name" {
  type = string
}
