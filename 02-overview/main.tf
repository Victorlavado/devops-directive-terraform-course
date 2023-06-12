terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-04b1c88a6bbd48f8e" # Ubuntu 20.04 LTS // eu-west-1
  instance_type = "t2.micro"
}
