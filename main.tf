terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.75.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"

}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name        = "testing-vpc"
    environment = "dev"
    method      = "terraform"
  }
}

resource "aws_instance" "ec2" {
    ami = "ami-0d0e8b294f5fa3e60"
    instance_type = "t2.micro"  
    tags = {
    Name        = "web-vm01"
  }
}

