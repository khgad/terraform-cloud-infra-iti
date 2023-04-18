# ------------------ Instances in AZ-A --------------------- #

resource "aws_instance" "az1-plc" {
  ami           = var.ami_image
  instance_type = var.instance_type
  subnet_id     = var.pub_sub_1_id
  key_name      = var.key_name
  user_data     = local.pub_user_data

  vpc_security_group_ids = [
    var.sg-ssh-id
  ]

  tags = {
    "Name" = "az1-public"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ./inventory"
  }

}

resource "aws_instance" "az1-pvt" {
  ami           = var.ami_image
  instance_type = var.instance_type
  subnet_id     = var.pvt_sub_1_id
  key_name      = var.key_name
  vpc_security_group_ids = [
    var.sg-vpc-id
  ]

  tags = {
    "Name" = "az1-private"
  }
}

# ------------------ Instances in AZ-B --------------------- #

resource "aws_instance" "az2-plc" {
  ami           = var.ami_image
  instance_type = var.instance_type
  subnet_id     = var.pub_sub_2_id
  key_name      = var.key_name
  user_data     = local.pub_user_data
  vpc_security_group_ids = [
    var.sg-ssh-id
  ]

  tags = {
    "Name" = "az2-public"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> ./inventory"
  }
}

resource "aws_instance" "az2-pvt" {
  ami           = var.ami_image
  instance_type = var.instance_type
  subnet_id     = var.pvt_sub_2_id
  key_name      = var.key_name
  vpc_security_group_ids = [
    var.sg-vpc-id
  ]

  tags = {
    "Name" = "az2-private"
  }
}
