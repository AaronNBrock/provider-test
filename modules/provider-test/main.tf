provider "aws" {
  alias = "one"
}

resource "aws_s3_bucket" "b" {
  bucket   = "my-tf-test-bucket-henry"
  acl      = "private"
}
