module "k8s_network" {
  source = "../../infrastructure/network"

  name     = var.network_name
  address  = "${var.network_base_ip}1"
  netmask  = "255.255.255.0"
  ip_start = "${var.network_base_ip}2"
  ip_end   = "${var.network_base_ip}254"
}
