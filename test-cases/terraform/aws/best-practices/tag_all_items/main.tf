provider "aws" {
  region = "eu-west-1"
}

resource "aws_sns_topic" "cloudrail_1" {
  name              = "sns_not_ecnrypted-1"
  tags = {
    Name = "Sns Topic Cloudrail Test"
  }
}

resource "aws_sqs_queue" "cloudrail" {
  name = "sqs_non_encrypted"
  tags = {
    Name = "Sqs Cloudrail Test"
  }
}
