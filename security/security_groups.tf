resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "allow-vpc-cidr" {
  name        = "allow vpc cider only"
  description = "Allow vpc cider only"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cider]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cider]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-vpc-cidr"
  }
}

resource "aws_security_group" "rds-sg" {
  name = "allow access to rds"
  description = "Allow access to rds"
  vpc_id = var.vpc_id

  ingress {
    from_port = 3306
    to_port = 3306
    protocol= "tcp"
    cidr_blocks = [var.vpc_cider]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-rds-access"
  }

}

resource "aws_security_group" "elasticache-sg" {
  name = "allow access to elasticache"
  description = "Allow access to elasticache"
  vpc_id = var.vpc_id

  ingress {
    from_port = 6379
    to_port = 6379
    protocol= "tcp"
    cidr_blocks = [var.vpc_cider]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-elasticache-access"
  }
}