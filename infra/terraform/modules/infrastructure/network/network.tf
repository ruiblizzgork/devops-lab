resource "libvirt_network" "network" {
  name      = var.name
  autostart = true
  forward = {
    mode = "nat"
    nat = {
      ports = [
        {
          start = "1024"
          end   = "65535"
        }
      ]
    }
  }
  ips = [
    {
      address = var.address
      netmask = var.netmask
      dhcp = {
        ranges = [
          {
            start = var.ip_start
            end   = var.ip_end
          }
        ]
      }
    }
  ]
}
