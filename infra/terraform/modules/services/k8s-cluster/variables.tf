variable "pool_name" {
  type    = string
  default = "k8s-pool"
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

variable "vms_username" {
  type = string
}

variable "ssh_public_key" {
  type = string
}

variable "network_name" {
  type    = string
  default = "k8s-network"
}

variable "net_ip" {
  type = string
}

variable "master_node_memory_in_MiB" {
  type = number
}

variable "worker_node_memory_in_MiB" {
  type = number
}

variable "master_node_vcpu" {
  type = number
}

variable "worker_node_vcpu" {
  type = number
}
