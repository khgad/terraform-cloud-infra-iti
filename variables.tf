variable "CIDR" {
  type = string
}

variable "COMPANY_NAME" {
  type = string
  default = "ITI"
}

variable "PUBLIC_SUB_1" {
  type = string
}

variable "PUBLIC_SUB_2" {
  type = string
}

variable "PRIVATE_SUB_1" {
  type = string
}

variable "PRIVATE_SUB_2" {
  type = string
}

variable "REGION" {
  type    = string
  default = "us-east-1"
}

variable "AZ_1" {
  type    = string
  default = "us-east-1a"
}

variable "AZ_2" {
  type    = string
  default = "us-east-1b"
}

variable "INSTANCE_TYPE" {
  type = string
}

variable "AMI_IMAGE" {
  type    = string
  default = "ami-069aabeee6f53e7bf"
}

variable "RDS_CREDS_SECRET" {
  type = string
}