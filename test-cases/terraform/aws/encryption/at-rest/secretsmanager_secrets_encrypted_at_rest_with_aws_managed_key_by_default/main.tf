provider "aws" {
  region = "eu-west-1"
}

resource "aws_secretsmanager_secret" "test" {
  name = "test-cloudrail"
}
