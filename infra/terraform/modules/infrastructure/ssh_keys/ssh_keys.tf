resource "tls_private_key" "ssh" {
  algorithm = "ED25519"
}

resource "local_file" "private_key" {
  content         = tls_private_key.ssh.private_key_openssh
  filename        = "${var.ssh_keys_dir_path}${var.key_name}"
  file_permission = "0600"
}

resource "local_file" "public_key" {
  content         = tls_private_key.ssh.public_key_openssh
  filename        = "${var.ssh_keys_dir_path}${var.key_name}.pub"
  file_permission = "0600"
}
