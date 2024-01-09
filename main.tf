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
  
data "external" "env" {
  program = ["${path.module}/env.sh"]
}

output "foo" {
  value = data.external.env.result["foo"]
}
