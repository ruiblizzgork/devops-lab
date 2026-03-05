resource "libvirt_pool" "pool" {
  name = var.name
  type = var.type
  target = {
    path = var.pool_path
    permissions = {
      mode  = "0710"
      owner = "1000"
      group = "956"
    }
  }
}