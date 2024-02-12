provider "aws" {
  region = "eu-west-2"
}

module "template" {
  source = "../"
  # source = "github.com/ministryofjustice/cloud-platform-terraform-template?ref=version" # use the latest release

  # Tags
  business_unit          = var.business_unit
  application            = var.application
  is_production          = var.is_production
  team_name              = var.team_name
  namespace              = var.namespace
  environment_name       = var.environment_name
  infrastructure_support = var.infrastructure_support
}
