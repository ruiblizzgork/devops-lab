module "k8s-cluster" {
  source = "../../modules/services/k8s-cluster"

  pool_base_dir_path        = var.pool_base_dir_path
  base_volume_name          = var.base_volume_name
  base_volume_url           = var.base_volume_url
  worker_node_count         = var.k8s_worker_node_count
  vms_username              = var.vms_username
  ssh_public_key            = var.ssh_public_key
  net_ip                    = var.k8s_net_ip
  master_node_memory_in_MiB = var.k8s_master_node_memory_in_MiB
  master_node_vcpu          = var.k8s_master_node_vcpu
  worker_node_memory_in_MiB = var.k8s_worker_node_memory_in_MiB
  worker_node_vcpu          = var.k8s_worker_node_vcpu
}
