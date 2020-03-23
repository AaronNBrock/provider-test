provider "aws" {
  alias   = "test_provider"
  version = "~> 2"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  provider = aws.test_provider
  bucket   = "my-tf-test-bucket-henry"
  acl      = "private"
}
