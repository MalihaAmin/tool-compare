provider "aws" {
  region = "eu-west-1"
}

resource "aws_elasticsearch_domain" "es-not-secure-policy" {
  domain_name = "es-not-secure-policy"

  ebs_options {
    ebs_enabled = true
    volume_size = 10
    volume_type = "gp2"
  }
}

resource "aws_elasticsearch_domain_policy" "main" {
  domain_name = aws_elasticsearch_domain.es-not-secure-policy.domain_name

  access_policies = <<POLICIES
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "es:*",
            "Principal": "*",
            "Effect": "Allow"
        }
    ]
}
POLICIES
}