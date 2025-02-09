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

resource "aws_route53_record" "joinme1" {
  zone_id = aws2.winoto.com
  name    = "joinme.aws2.winoto.com"
  type    = "A"

  weighted_routing_policy {
    weight = 100
  }

  records = ["192.0.2.1"]
  ttl     = 300
}

resource "aws_route53_record" "joinme2" {
  zone_id = aws2.winoto.com
  name    = "joinme.aws2.winoto.com"
  type    = "A"

  weighted_routing_policy {
    weight = 50
  }

  records = ["192.0.2.2"]
  ttl     = 300
}

