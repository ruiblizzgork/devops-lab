resource "tls_private_key" "ssh" {
  algorithm = "ED25519"
}

resource "local_file" "ided25519" {
  content         = tls_private_key.ssh.private_key_openssh
  filename        = "${var.keys_dir_path}${var.keys_name}"
  file_permission = "0600"
}

resource "local_file" "ided25519pub" {
  content         = tls_private_key.ssh.public_key_openssh
  filename        = "${var.keys_dir_path}${var.keys_name}.pub"
  file_permission = "0600"
}