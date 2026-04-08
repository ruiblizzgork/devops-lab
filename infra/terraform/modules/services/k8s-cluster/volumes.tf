module "base_volume" {
  source = "../../infrastructure/base_volume"

  name      = var.base_volume_name
  pool_name = module.k8s_pool.name
  url       = var.base_volume_url
}

module "master_node_volume" {
  source = "../../infrastructure/volume"

  name                   = "tf-k8s-master-node.qcow2"
  pool_name              = module.k8s_pool.name
  capacity               = 10 * 1024 * 1024 * 1024
  backing_store_img_path = module.base_volume.name
}

module "worker_node_volumes" {
  source = "../../infrastructure/volume"

  count = var.worker_node_count

  name                   = "tf-k8s-worker-node-${count.index}.qcow2"
  pool_name              = module.k8s_pool.name
  capacity               = 10 * 1024 * 1024 * 1024
  backing_store_img_path = module.base_volume.name
}

module "cloudinit_master_node_volume" {
  source = "../../infrastructure/cloudinit_volume"

  name           = "master_node_cloudinit_volume"
  username       = var.vms_username
  ssh_public_key = module.master_node_ssh_keys.public_key
  instance_id    = "master_node_cloudinit_volume_id"
  hostname       = "k8s-master-node"
  ip             = "${var.net_ip}10"
  gateway        = "${var.net_ip}1"
  pool_name      = module.k8s_pool.name
}

module "cloudinit_worker_node_volumes" {
  source = "../../infrastructure/cloudinit_volume"

  count = var.worker_node_count

  name           = "worker_node_cloudinit_volume-${count.index}"
  username       = var.vms_username
  ssh_public_key = module.workers_nodes_ssh_keys[count.index].public_key
  instance_id    = "worker_node_cloudinit_volume_id-${count.index}"
  hostname       = "k8s-worker-node-${count.index}"
  ip             = "${var.net_ip}${count.index + 11}"
  gateway        = "${var.net_ip}1"
  pool_name      = module.k8s_pool.name
}
