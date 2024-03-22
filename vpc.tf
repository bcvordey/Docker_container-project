# Creating VPC
resource "aws_vpc" "docker1_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "VPC for Docker1 project"
  }
}