# cloud-platform-terraform-_template_

_note: Please remove all comments in italics and fill where required>_

_Please change the urls in the release badge below_
[![Releases](https://img.shields.io/github/release/ministryofjustice/cloud-platform-terraform-template/all.svg?style=flat-square)](https://github.com/ministryofjustice/cloud-platform-terraform-template/releases)

_Short describion of the module_
_This Terraform module ......_

## Usage

_Describe how to use the module_
_example_:

```hcl
module "example_sqs" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-sqs?ref=version"

  environment-name       = "example-env"
  team_name              = "cloud-platform"
  infrastructure-support = "example-team@digtal.justice.gov.uk"
  application            = "exampleapp"
  sqs_name               = "examplesqsname"

  # Set encrypt_sqs_kms = "true", to enable SSE for SQS using KMS key.
  encrypt_sqs_kms = "false"

  # existing_user_name     = module.another_sqs_instance.user_name
  
  # NB: If you want multiple queues to share an IAM user, you must create one queue first,
  # letting it create the IAM user. Then, in a separate PR, you can create all the other
  # queues. Otherwise terraform cannot resolve the cyclic dependency of creating multiple
  # queues but one IAM user, because it cannot work out which queue will successfully
  # create the user, and which queues will reuse that user.

  providers = {
    aws = aws.london
  }
}

<!--- BEGIN_TF_DOCS --->
<!--- END_TF_DOCS --->

## Tags

Some of the inputs are tags. All infrastructure resources need to be tagged according to the [MOJ techincal guidance](https://ministryofjustice.github.io/technical-guidance/standards/documenting-infrastructure-owners/#documenting-owners-of-infrastructure). The tags are stored as variables that you will need to fill out as part of your module.

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| application |  | string | - | yes |
| business-unit | Area of the MOJ responsible for the service | string | `mojdigital` | yes |
| environment-name |  | string | - | yes |
| infrastructure-support | The team responsible for managing the infrastructure. Should be of the form team-email | string | - | yes |
| is-production |  | string | `false` | yes |
| team_name |  | string | - | yes |
| sqs_name |  | string | - | yes |

## Reading Material

_add link to external source_
