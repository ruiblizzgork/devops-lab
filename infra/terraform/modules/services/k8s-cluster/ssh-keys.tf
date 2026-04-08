module "master_node_ssh_keys" {
  source = "../../infrastructure/ssh-keys"

  keys_dir_path = var.keys_dir_path
  keys_name     = "master-node-key"
}

module "workers_nodes_ssh_keys" {
  source = "../../infrastructure/ssh-keys"

  count = var.worker_node_count

  keys_dir_path = var.keys_dir_path
  keys_name     = "worker_node-${count.index}"
}