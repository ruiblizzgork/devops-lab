module "k8s_cluster" {
  source = "../../modules/services/k8s_cluster"

  pool_base_dir_path     = local.pool_base_dir_path
  base_volume_name       = local.base_volume_name
  base_volume_url        = local.base_volume_url
  worker_node_count      = local.k8s_worker_node_count
  vm_username            = local.vm_username
  ssh_keys_dir_path      = local.ssh_keys_dir_path
  network_base_ip        = local.k8s_network_base_ip
  master_node_memory_mib = local.k8s_master_node_memory_mib
  master_node_vcpu       = local.k8s_master_node_vcpu
  worker_node_memory_mib = local.k8s_worker_node_memory_mib
  worker_node_vcpu       = local.k8s_worker_node_vcpu
}
