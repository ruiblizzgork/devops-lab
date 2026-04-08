output "master_node" {
  value = {
    name = module.master_node_vm.name
    ip   = module.cloudinit_master_node_volume.ip
  }
}

output "workers_nodes_count" {
  value = var.worker_node_count
}

output "workers_nodes" {
  value = [
    for i in range(var.worker_node_count) :
    {
      name = module.worker_nodes_vm[i].name
      ip   = module.cloudinit_worker_node_volumes[i].ip
    }
  ]
}

output "master_node_keys" {
  value = {
    private_key_file_path = module.master_node_ssh_keys.private_key_file_path
    public_key_file_path  = module.master_node_ssh_keys.public_key_file_path
  }
}

output "workers_nodes_keys" {
  value = [
    for i in range(var.worker_node_count) :
    {
      private_key_file_path = module.workers_nodes_ssh_keys[i].private_key_file_path
      public_key_file_path  = module.workers_nodes_ssh_keys[i].public_key_file_path
    }
  ]
}
