output "var-output" {
  value = <<EOT
    my_default_var: ${var.my_default_var}
    my_var_a: ${var.my_var_a}
  EOT
}
