resource "libvirt_volume" "base_volume" {
  name = var.name
  pool = var.pool_name

  target = {
    format = {
      type = "qcow2"
    }
    permissions = {
      mode  = "0700"
      owner = "1000"
      group = "1000"
    }
  }

  create = {
    content = {
      url = var.url
    }
  }
}
