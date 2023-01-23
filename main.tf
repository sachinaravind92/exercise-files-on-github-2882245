terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::315892902651:role/role_terraform"
  }
}

resource "aws_instance" "first_instance" {
  ami               = "ami-0b5eea76982371e91"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"

  tags = {
    name = "saravind"
  }
}

