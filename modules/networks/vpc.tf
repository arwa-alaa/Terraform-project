resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr_vpc
  tags = {
    Name = "project"
  }
}