variable "pool_base_dir_path" {
  type = string
}

variable "base_volume_name" {
  type = string
}

variable "base_volume_url" {
  type = string
}

variable "k8s_worker_node_count" {
  type = number
}

variable "vms_username" {
  type = string
}

variable "ssh_public_key" {
  type = string
}

variable "k8s_net_ip" {
  type = string
}

variable "k8s_master_node_memory_in_MiB" {
  type = number
}

variable "k8s_master_node_vcpu" {
  type = number
}

variable "k8s_worker_node_memory_in_MiB" {
  type = number
}

variable "k8s_worker_node_vcpu" {
  type = number
}
