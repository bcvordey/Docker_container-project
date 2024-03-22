resource "aws_internet_gateway" "gw1" {
  vpc_id = aws_vpc.docker1_vpc.id

  tags = {
    Name = "igw for docker1"
  }
}