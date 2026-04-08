resource "local_file" "ansible_vars" {
  filename = var.filename

  content = templatefile("${path.module}/ansible_vars.tmpl", {
    ansible_user               = var.ansible_user
    ansible_ssh_common_args    = var.ansible_ssh_common_args
    ansible_python_interpreter = var.ansible_python_interpreter
  })
}
