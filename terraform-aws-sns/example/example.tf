provider "aws" {
  region = "eu-west-1"
}

module "sns_cloudwatch" {
  source = "../"
  cloudwatch_event_rule_name        = "capture-aws-sign-in"
  description = "Capture each AWS Console Sign In"
  sns_name = "mysns"
  sns_display_name = "demosns"
}
