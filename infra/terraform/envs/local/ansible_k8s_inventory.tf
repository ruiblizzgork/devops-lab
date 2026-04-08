module "ansible_k8s_inventory" {
  source = "../../modules/services/ansible_k8s_inventory"

  output_file_path      = "../../../ansible/inventory.ini"
  env_name              = local.env_name
  master_node           = module.k8s_cluster.master_node
  worker_nodes          = module.k8s_cluster.worker_nodes
  master_node_key_paths = module.k8s_cluster.master_node_key_paths
  worker_node_key_paths = module.k8s_cluster.worker_node_key_paths
}
