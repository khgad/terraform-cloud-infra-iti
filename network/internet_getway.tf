resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.newvpc.id

  tags = {
    Name = "terraform gw"
  }
}