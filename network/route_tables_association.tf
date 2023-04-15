resource "aws_route_table_association" "az1-sub-plc" {
  subnet_id      = aws_subnet.az1-public-subnet.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "az1-sub-pvt" {
  subnet_id      = aws_subnet.az1-private-subnet.id
  route_table_id = aws_route_table.private-rt.id
}

resource "aws_route_table_association" "az2-sub-plc" {
  subnet_id      = aws_subnet.az2-public-subnet.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "az2-sub-pvt" {
  subnet_id      = aws_subnet.az2-private-subnet.id
  route_table_id = aws_route_table.private-rt.id
}