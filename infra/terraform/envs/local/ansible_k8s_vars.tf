module "ansible_k8s_vars" {
  source = "../../modules/services/ansible_k8s_vars"

  output_file_path = "../../../ansible/group_vars/all.yaml"
  ansible_user     = local.vm_username
}
