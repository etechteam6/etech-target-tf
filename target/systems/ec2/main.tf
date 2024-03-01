terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.38.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "server" {
  source        = "https://github.com/etechteam6/base-rac-tf/tree/main//modules/ec2"
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.medium"
  num           = 10
}
