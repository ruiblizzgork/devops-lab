variable "output_file_path" {
  type = string
}

variable "env_name" {
  type = string
}

variable "master_node" {
  type = object({
    name = string
    ip   = string
  })
}

variable "worker_nodes" {
  type = list(object({
    name = string
    ip   = string
  }))
}

variable "master_node_key_paths" {
  type = object({
    private_key_file_path = string
    public_key_file_path  = string
  })
}

variable "worker_node_key_paths" {
  type = list(object({
    private_key_file_path = string
    public_key_file_path  = string
  }))
}
