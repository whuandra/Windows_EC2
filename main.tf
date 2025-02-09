terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_route53_zone" "example_zone" {
name = "example.com"
}

