resource "aws_route_table" "rtb1" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags= {
    Name="rtb1"
  }
}
resource "aws_route_table_association" "rta-public_subnet1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.rtb1.id
}

resource "aws_route_table_association" "rta-public_subnet2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.rtb1.id
}