locals {
  config = yamldecode(file("${path.module}/../../../../config.yml"))

  env_name = "local"

  vms_username   = local.config.envs.local.user_data.username
  ssh_public_key = file(local.config.envs.local.user_data.public_key_file_path)

  pool_base_dir_path = local.config.envs.local.volumes.pool_base_dir_path
  base_volume_name   = local.config.envs.local.volumes.base_volume_name
  base_volume_url    = local.config.envs.local.volumes.base_volume_url

  k8s_master_node_memory_in_MiB = local.config.envs.local.k8s-cluster.master_node.k8s_master_node_memory_in_MiB
  k8s_master_node_vcpu          = local.config.envs.local.k8s-cluster.master_node.k8s_master_node_vcpu

  k8s_worker_node_count         = local.config.envs.local.k8s-cluster.workers_nodes.k8s_worker_node_count
  k8s_worker_node_memory_in_MiB = local.config.envs.local.k8s-cluster.workers_nodes.k8s_worker_node_memory_in_MiB
  k8s_worker_node_vcpu          = local.config.envs.local.k8s-cluster.workers_nodes.k8s_worker_node_vcpu

  k8s_net_ip = local.config.envs.local.k8s-cluster.k8s_net_ip
}
