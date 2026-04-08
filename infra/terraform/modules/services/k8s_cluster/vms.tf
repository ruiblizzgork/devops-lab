module "master_node_vm" {
  source = "../../infrastructure/vm"

  name              = "k8s_master_node"
  memory_mib        = var.master_node_memory_mib
  vcpu              = var.master_node_vcpu
  system_disk_id    = module.master_node_volume.id
  cloudinit_disk_id = module.cloudinit_master_node_volume.id
  network_name      = module.k8s_network.name
}

module "worker_nodes_vm" {
  source = "../../infrastructure/vm"

  count = var.worker_node_count

  name              = "k8s_worker_node-${count.index}"
  memory_mib        = var.worker_node_memory_mib
  vcpu              = var.worker_node_vcpu
  system_disk_id    = module.worker_node_volumes[count.index].id
  cloudinit_disk_id = module.cloudinit_worker_node_volumes[count.index].id
  network_name      = module.k8s_network.name
}
