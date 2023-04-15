variable "cidr" {
  type = string
}

variable "company_name" {
  type = string
}

variable "pub_sub_1" {
  type = string
}

variable "pub_sub_2" {
  type = string
}

variable "pvt_sub_1" {
  type = string
}

variable "pvt_sub_2" {
  type = string
}

variable "region" {
  type = string
  default = "us-east-1"
}

variable "az_1" {
  type = string
  default = "us-east-1a"
}

variable "az_2" {
  type = string
  default = "us-east-1b"
}