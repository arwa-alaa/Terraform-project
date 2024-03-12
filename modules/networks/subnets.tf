# Create the public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.cidr_public_subnet
  
  tags = {
    Name = "public-subnet"
  }
}

# Create the private subnet
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.cidr_private_subnet
  
  tags = {
    Name = "private-subnet"
  }
}

output "public" {
  value       = aws_subnet.public_subnet.id
  description = "The ID of the public subnet"
}