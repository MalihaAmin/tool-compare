provider "aws" {
  region = "eu-west-1"
}

resource "aws_cloudwatch_log_group" "cloudrail-test" {
  retention_in_days = 1
}
