provider "aws" {
  region = "us-east-1"
  profile = "terraform_demo"
}

provider "aws" {
  alias   = "test_provider"
  version = "~> 2"
  region  = "us-east-1"
}

module "provider-test" {
  source = "./modules/provider-test"
  providers = {
    aws = aws
    aws.one = aws.test_provider
    }
}
