variable "pool_name" {
  type    = string
  default = "k8s_pool"
}

variable "pool_type" {
  type    = string
  default = "dir"
}

variable "pool_base_dir_path" {
  type = string
}

variable "base_volume_name" {
  type = string
}

variable "base_volume_url" {
  type = string
}

variable "worker_node_count" {
  type = number
}

variable "vm_username" {
  type = string
}

variable "ssh_keys_dir_path" {
  type = string
}

variable "network_name" {
  type    = string
  default = "k8s_network"
}

variable "network_base_ip" {
  type = string
}

variable "master_node_memory_mib" {
  type = number
}

variable "worker_node_memory_mib" {
  type = number
}

variable "master_node_vcpu" {
  type = number
}

variable "worker_node_vcpu" {
  type = number
}
