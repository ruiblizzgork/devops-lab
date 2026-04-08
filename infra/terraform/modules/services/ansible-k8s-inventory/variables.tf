variable "filename" {
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

variable "workers_nodes" {
  type = list(object({
    name = string
    ip   = string
  }))
}

variable "master_node_keys_files_paths" {
  type = object({
    private_key_file_path = string
    public_key_file_path  = string
  })
}

variable "workers_nodes_keys_files_paths" {
  type = list(object({
    private_key_file_path = string
    public_key_file_path  = string
  }))
}
