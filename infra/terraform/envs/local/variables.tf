locals {
  config = yamldecode(file("${path.module}/../../../../config.yml"))

  env_name = "local"

  vm_username       = local.config.envs.local.user_data.username
  ssh_keys_dir_path = local.config.envs.local.user_data.ssh_keys_dir_path

  pool_base_dir_path = local.config.envs.local.volumes.pool_dir_path
  base_volume_name   = local.config.envs.local.volumes.base_name
  base_volume_url    = local.config.envs.local.volumes.base_url

  k8s_master_node_memory_mib = local.config.envs.local.k8s_cluster.master_node.memory_in_mib
  k8s_master_node_vcpu       = local.config.envs.local.k8s_cluster.master_node.vcpu

  k8s_worker_node_count      = local.config.envs.local.k8s_cluster.worker_nodes.count
  k8s_worker_node_memory_mib = local.config.envs.local.k8s_cluster.worker_nodes.memory_in_mib
  k8s_worker_node_vcpu       = local.config.envs.local.k8s_cluster.worker_nodes.vcpu

  k8s_network_base_ip = local.config.envs.local.k8s_cluster.network_base_ip
}