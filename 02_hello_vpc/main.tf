provider "aws" {
    region = "eu-west-2"
}

resource "aws_vpc" "test_vpc" {
    cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "test_subnet" {
  vpc_id     = aws_vpc.test_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}

