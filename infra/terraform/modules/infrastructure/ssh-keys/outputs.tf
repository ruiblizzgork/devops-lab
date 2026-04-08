output "private_key_file_path" {
  value = "${var.keys_dir_path}${var.keys_name}"
}

output "public_key_file_path" {
  value = "${var.keys_dir_path}${var.keys_name}.pub"
}

output "public_key" {
  value = tls_private_key.ssh.public_key_openssh
}
