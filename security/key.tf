resource "tls_private_key" "tls-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "private_key_file" {
  content  = tls_private_key.tls-key.private_key_pem
  filename = "./tf-key.pem"
}

resource "aws_key_pair" "tf-key" {
  key_name   = "tf-key"
  public_key = tls_private_key.tls-key.public_key_openssh
}