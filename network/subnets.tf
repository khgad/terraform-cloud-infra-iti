# ------------ subnets in AZ-A ------------- #
resource "aws_subnet" "az1-public-subnet" {
  vpc_id            = aws_vpc.newvpc.id
  cidr_block        = var.pub_sub_1
  availability_zone = var.az_1
  map_public_ip_on_launch = "true"
  tags = {
    "Name" = "${var.company_name} az1 public subnet"
  }
}

resource "aws_subnet" "az1-private-subnet" {
  vpc_id            = aws_vpc.newvpc.id
  cidr_block        = var.pvt_sub_1
  availability_zone = var.az_1
  tags = {
    "Name" = "${var.company_name} az1 private subnet"
  }
}

# ------------ subnets in AZ-B ------------- #

resource "aws_subnet" "az2-public-subnet" {
  vpc_id            = aws_vpc.newvpc.id
  cidr_block        = var.pub_sub_2
  availability_zone = var.az_2
  map_public_ip_on_launch = "true"
  tags = {
    "Name" = "${var.company_name} az2 public subnet"
  }
}

resource "aws_subnet" "az2-private-subnet" {
  vpc_id            = aws_vpc.newvpc.id
  cidr_block        = var.pvt_sub_2
  availability_zone = var.az_2
  tags = {
    "Name" = "${var.company_name} az2 private subnet"
  }
}