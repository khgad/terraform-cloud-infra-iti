resource "aws_elasticache_cluster" "elasticache" {
  cluster_id           = "ec-id"
  engine               = "redis"
  node_type            = "cache.t4g.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis5.0"
  engine_version       = "5.0.6"
  port                 = 6379
  subnet_group_name = aws_elasticache_subnet_group.elastic-sub-group.name
  # add security group
  security_group_ids = [ var.sg-ec-id ]
}