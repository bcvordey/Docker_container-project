######################
#  Route Table
######################

resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.docker1_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw1.id
  }


  tags = {
    Name = "Public Route Table"
  }
}

######################
# Route table association
######################

resource "aws_route_table_association" "public-subnet-1-rt" {
  subnet_id      = aws_subnet.public-subnet1.id
  route_table_id = aws_route_table.public-route-table.id
}
