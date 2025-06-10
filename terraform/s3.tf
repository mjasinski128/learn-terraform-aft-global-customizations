data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox02_bucket" {
  bucket = "aft-global-cust-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
