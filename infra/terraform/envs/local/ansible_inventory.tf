resource "local_file" "ansible_inventory" {
  filename = "${path.module}/../../../ansible/inventory.ini"

  content = templatefile("${path.module}/inventory.tmpl", {
    env_name = local.env_name
    master_node_name = module.k8s-cluster.master_node_vm.name
    master_node_ip   = module.k8s-cluster.master_node_vm.ip

    workers_nodes = [
      for i in range(module.k8s-cluster.workers_nodes_count) :
      {
        name = module.k8s-cluster.workers_nodes[i].name
        ip   = module.k8s-cluster.workers_nodes[i].ip
      }
    ]

    username = local.vms_username
    private_key_file_path = local.config.envs.local.user_data.private_key_file_path
  })
}