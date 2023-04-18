data "aws_secretsmanager_secret" "rds_creds" {
  name = var.rds_creds
}

data "aws_secretsmanager_secret_version" "rds_creds_data" {
  secret_id = data.aws_secretsmanager_secret.rds_creds.id
}

locals {
  rds_username = jsondecode(data.aws_secretsmanager_secret_version.rds_creds_data.secret_string)["username"]
  rds_password = jsondecode(data.aws_secretsmanager_secret_version.rds_creds_data.secret_string)["password"]
}

resource "aws_db_instance" "rds" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = local.rds_username
  password             = local.rds_password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.rds-sub-group.name
  vpc_security_group_ids = [var.sg-rds-id ]
  tags = {
    "Name" = "RDS from terraform"
  }
}