module "master_node_ssh_keys" {
  source = "../../infrastructure/ssh_keys"

  ssh_keys_dir_path = var.ssh_keys_dir_path
  key_name          = "master_node_key"
}

module "worker_nodes_ssh_keys" {
  source = "../../infrastructure/ssh_keys"

  count = var.worker_node_count

  ssh_keys_dir_path = var.ssh_keys_dir_path
  key_name          = "worker_node-${count.index}"
}