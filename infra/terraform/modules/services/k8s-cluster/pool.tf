module "k8s_pool" {
  source = "../../infrastructure/pool"

  name      = var.pool_name
  type      = var.pool_type
  pool_path = "${var.pool_base_dir_path}${var.pool_name}"
}
