locals {
  pub_user_data = templatefile("scripts/prepare_env.sh", {
    rds_endpoint = var.rds_endpoint
    rds_username = var.rds_username
    ec_endpoint  = var.ec_endpoint
    ec_port      = var.ec_port
    private_key  = var.private_key
  })
}
