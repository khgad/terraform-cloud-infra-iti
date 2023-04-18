output "private_key" {
  value = tls_private_key.tls-key.private_key_pem
}

output "key_name" {
  value = aws_key_pair.tf-key.key_name
}

output "sg-ssh-id" {
  value = aws_security_group.allow_ssh.id
}

output "sg-vpc-id" {
  value = aws_security_group.allow-vpc-cidr.id
}

output "sg-rds-id" {
  value = aws_security_group.rds-sg.id
}

output "sg-ec-id" {
  value = aws_security_group.elasticache-sg.id
}