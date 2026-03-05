module "k8s_network" {
  source = "../../infrastructure/network"

  name     = var.network_name
  address  = "${var.net_ip}1"
  netmask  = "255.255.255.0"
  ip_start = "${var.net_ip}2"
  ip_end   = "${var.net_ip}254"
}
