terraform {
  required_providers {
    aws = {
      #plugin rquired
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  #shared_credentials_file="$HOME/.aws/credentials" if you wanna use that
  region = "us-east-1"
}

resource "aws_instance" "nginx-node-1" {
  ami           = " ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
}

resource "aws_instance" "nginx-node-2" {
  ami           = " ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
}

resource "aws_instance" "nginx-node-3" {
  ami           = " ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
}
