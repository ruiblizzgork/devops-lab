module "ansible-k8s-vars" {
  source = "../../modules/services/ansible-k8s-vars"

  filename = "../../../ansible/group_vars/all.yaml"
  ansible_user = local.vms_username
}
