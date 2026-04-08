module "ansible-k8s-inventory" {
  source = "../../modules/services/ansible-k8s-inventory"

  filename                       = "../../../ansible/inventory.ini"
  env_name                       = local.env_name
  master_node                    = module.k8s-cluster.master_node
  workers_nodes                  = module.k8s-cluster.workers_nodes
  master_node_keys_files_paths   = module.k8s-cluster.master_node_keys
  workers_nodes_keys_files_paths = module.k8s-cluster.workers_nodes_keys
}