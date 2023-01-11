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

resource "null_resource" "null" {
  provisioner "local-exec" {
    command = "env"
  }
  triggers = {
    always = uuid()
  }
}
