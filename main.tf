terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      configuration_aliases = [
        aws.backup,
        aws.prod
      ]
    }
  }
}

resource "null_resource" "test" {}

data "environment_variables" "all" {
  filter    = "MY_ENV_VAR"
}

output "env-vars" {
  value = data.environment_variables.all
}