resource "local_file" "ansible_inventory" {
  filename = var.filename

  content = templatefile("${path.module}/inventory.tmpl", {
    env_name = var.env_name

    master_node   = var.master_node
    workers_nodes = var.workers_nodes

    master_node_private_key_file_path = var.master_node_keys_files_paths.private_key_file_path

    workers_nodes_private_key_file_path = [
      for w in var.workers_nodes_keys_files_paths :
      w.private_key_file_path
    ]
  })
}
