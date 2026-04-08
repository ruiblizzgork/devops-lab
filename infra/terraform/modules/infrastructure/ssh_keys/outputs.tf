output "private_key_file_path" {
  value = "${var.ssh_keys_dir_path}${var.key_name}"
}

output "public_key_file_path" {
  value = "${var.ssh_keys_dir_path}${var.key_name}.pub"
}

output "public_key" {
  value = tls_private_key.ssh.public_key_openssh
}
