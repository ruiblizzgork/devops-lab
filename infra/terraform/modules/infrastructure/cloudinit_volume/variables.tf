variable "name" {
  type    = string
  default = "cloudinit"
}

variable "username" {
  type = string
}

variable "ssh_public_key" {
  type = string
}

variable "instance_id" {
  type = string
}

variable "hostname" {
  type = string
}

variable "ip" {
  type = string
}

variable "gateway" {
  type = string
}

variable "pool_name" {
  type = string
}
