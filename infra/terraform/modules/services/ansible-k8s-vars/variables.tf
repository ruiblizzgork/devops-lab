variable "filename" {
  type = string
}

variable "ansible_user" {
  type = string
}

variable "ansible_ssh_common_args" {
  type = string
  default = "-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"
}

variable "ansible_python_interpreter" {
  type = string
  default = "/usr/bin/python3"
}