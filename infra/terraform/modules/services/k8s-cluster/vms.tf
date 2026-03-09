module "master_node_vm" {
  source = "../../infrastructure/vm"

  name              = "k8s_master_node"
  memory_in_MiB     = var.master_node_memory_in_MiB
  vcpu              = var.master_node_vcpu
  system_disk_id    = module.master_node_volume.id
  cloudinit_disk_id = module.cloudinit_master_node_volume.id
  network_name      = module.k8s_network.name
}

module "worker_nodes_vm" {
  source = "../../infrastructure/vm"

  count = var.worker_node_count

  name              = "k8s_worker_node-${count.index}"
  memory_in_MiB     = var.worker_node_memory_in_MiB
  vcpu              = var.worker_node_vcpu
  system_disk_id    = module.worker_node_volumes[count.index].id
  cloudinit_disk_id = module.cloudinit_worker_node_volumes[count.index].id
  network_name      = module.k8s_network.name
}
