resource "libvirt_domain" "vm" {
  name        = var.name
  memory_unit = "MiB"
  memory      = var.memory_mib
  vcpu        = var.vcpu
  type        = "kvm"
  autostart   = true
  running     = true
  os = {
    type            = "hvm"
    type_arch       = "x86_64"
    type_machine    = "q35"
    firmware        = "efi"
    loader          = var.loader_file_path
    loader_readonly = "yes"
    loader_type     = "pflash"
    nv_ram = {
      nv_ram   = var.nvram_file_path
      template = var.nvram_template_file_path
    }
    boot_devices = [{ dev = "hd" }]
  }
  features = {
    acpi = true
  }
  devices = {
    disks = [
      {
        driver = {
          name = "qemu"
          type = "qcow2"
        }
        source = {
          file = {
            file = var.system_disk_id
          }
        }
        target = {
          dev = "vda"
          bus = "virtio"
        }
      },
      {
        driver = {
          name = "qemu"
          type = "raw"
        }
        source = {
          file = {
            file = var.cloudinit_disk_id
          }
        }
        target = {
          dev = "vdb"
          bus = "virtio"
        }
      }
    ]
    interfaces = [
      {
        model = {
          type = "virtio"
        }
        source = {
          network = {
            network = var.network_name
          }
        }
      }
    ]
    graphics = [
      {
        spice = {
          auto_port = true
        }
      }
    ]
    videos = [
      {
        model = {
          type    = "virtio"
          heads   = "1"
          primary = "yes"
        }
      }
    ]
  }
}
