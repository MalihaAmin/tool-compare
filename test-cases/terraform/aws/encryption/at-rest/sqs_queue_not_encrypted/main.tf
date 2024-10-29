provider "aws" {
  region = "eu-west-1"
}

resource "aws_sqs_queue" "cloudrail" {
  name = "sqs_non_encrypted"
}
