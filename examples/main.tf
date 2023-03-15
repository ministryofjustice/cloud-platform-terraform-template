provider "aws" {
  region  = "eu-west-2"
}

module "template" {
  source = "../"
}
