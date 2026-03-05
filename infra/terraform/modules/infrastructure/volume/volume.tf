resource "libvirt_volume" "volume" {
  name     = "${var.name}.qcow2"
  pool     = var.pool_name
  capacity = var.capacity

  target = {
    format = {
      type = "qcow2"
    }
    permissions = {
      mode  = "0710"
      owner = "1000"
      group = "956"
    }
  }

  backing_store = {
    path = var.backing_store_img_path
    format = {
      type = "qcow2"
    }
  }
}
