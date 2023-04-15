resource "aws_elasticache_subnet_group" "elastic-sub-group" {
  name       = "elastic-subnet-group"
  subnet_ids = [var.pvt_sub_1_id, var.pvt_sub_2_id]

  tags = {
    Name = "elasticache subnet group"
  }
}

resource "aws_db_subnet_group" "rds-sub-group" {
  name       = "example"
  subnet_ids = [var.pvt_sub_1_id, var.pvt_sub_2_id]

  tags = {
    Name = "rds subnet group"
  }
}