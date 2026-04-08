module "k8s-cluster" {
  source = "../../modules/services/k8s-cluster"

  pool_base_dir_path        = local.pool_base_dir_path
  base_volume_name          = local.base_volume_name
  base_volume_url           = local.base_volume_url
  worker_node_count         = local.k8s_worker_node_count
  vms_username              = local.vms_username
  keys_dir_path             = local.keys_dir_path
  net_ip                    = local.k8s_net_ip
  master_node_memory_in_MiB = local.k8s_master_node_memory_in_MiB
  master_node_vcpu          = local.k8s_master_node_vcpu
  worker_node_memory_in_MiB = local.k8s_worker_node_memory_in_MiB
  worker_node_vcpu          = local.k8s_worker_node_vcpu
}
