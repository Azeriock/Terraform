provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "example" {
 ami           = "ami-0cfd0973db26b893b"
 instance_type = "t2.micro"
}

