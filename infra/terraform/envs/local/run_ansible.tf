resource "null_resource" "ansible" {

  depends_on = [
    module.k8s-cluster,
    module.ansible-k8s-inventory,
    module.ansible-k8s-vars
  ]

  provisioner "local-exec" {
    command = "ansible-playbook -i ../../../ansible/inventory.ini ../../../ansible/playbook.yaml"
  }
}