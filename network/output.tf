output "vpc_id" {
    value = aws_vpc.newvpc.id
}

output "vpc_cider" {
    value = aws_vpc.newvpc.cidr_block
}

output "pub_sub_1_id" {
    value = aws_subnet.az1-public-subnet.id
}

output "pub_sub_2_id" {
    value = aws_subnet.az2-public-subnet.id
}

output "pvt_sub_1_id" {
    value = aws_subnet.az1-private-subnet.id
}

output "pvt_sub_2_id" {
    value = aws_subnet.az2-private-subnet.id
}