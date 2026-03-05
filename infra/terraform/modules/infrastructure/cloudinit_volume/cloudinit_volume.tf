resource "libvirt_cloudinit_disk" "init" {
  name = var.name
  user_data = templatefile("${path.module}/user_data.tpl.yaml",
    {
      vm_user        = var.username
      ssh_public_key = var.ssh_public_key
    }
  )

  meta_data = yamlencode({
    instance-id    = var.instance_id
    local-hostname = var.hostname
  })

  network_config = templatefile(
    "${path.module}/network_data.tpl.yaml",
    {
      ip      = var.ip
      gateway = var.gateway
    }
  )
}

resource "libvirt_volume" "cloudinit_disk" {
  name = var.name
  pool = var.pool_name

  create = {
    content = {
      url = libvirt_cloudinit_disk.init.path
    }
  }
}
