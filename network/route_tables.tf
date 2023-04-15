resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.newvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "${var.company_name} public route table"
  }
}

resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.newvpc.id

  tags = {
    Name = "${var.company_name} private route table"
  }
}