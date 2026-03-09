output "master_node_vm" {
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
