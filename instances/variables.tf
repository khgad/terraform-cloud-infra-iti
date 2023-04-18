variable "pub_sub_1_id" {
  type = string
}

variable "pub_sub_2_id" {
  type = string
}

variable "pvt_sub_1_id" {
  type = string
}

variable "pvt_sub_2_id" {
  type = string
}

variable "private_key" {
  type = string
}

variable "key_name" {
  type = string
}

variable "sg-ssh-id" {
  type = string
}

variable "sg-vpc-id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ami_image" {
  type    = string
  default = "ami-06e46074ae430fba6"
}

variable "rds_endpoint" {
  type = string
}

variable "rds_username" {
  type = string
}

variable "ec_endpoint" {
  type = string
}

variable "ec_port" {
  type = string
}
