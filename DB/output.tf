output "rds_endpoint" {
  value = aws_db_instance.rds.address
}

output "rds_username" {
  value = aws_db_instance.rds.username
}

output "ec_endpoint" {
  value = aws_elasticache_cluster.elasticache.cache_nodes.0.address
}

output "ec_port" {
 value = aws_elasticache_cluster.elasticache.port
}