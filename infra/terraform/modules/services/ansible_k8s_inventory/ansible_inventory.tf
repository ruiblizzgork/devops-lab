resource "local_file" "ansible_inventory" {
  filename = var.output_file_path

  content = templatefile("${path.module}/inventory.tmpl", {
    env_name = var.env_name

    master_node  = var.master_node
    worker_nodes = var.worker_nodes

    master_node_private_key_file_path = var.master_node_key_paths.private_key_file_path

    worker_node_private_key_file_paths = [
      for w in var.worker_node_key_paths :
      w.private_key_file_path
    ]
  })
}
