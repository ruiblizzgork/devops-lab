resource "null_resource" "ansible" {

  depends_on = [
    module.k8s_cluster,
    module.ansible_k8s_inventory,
    module.ansible_k8s_vars
  ]

  provisioner "local-exec" {
    command = "ansible-playbook -i ../../../ansible/inventory.ini ../../../ansible/playbook.yaml"
  }
}