output "var-output" {
  value = <<EOT
    auto_var: ${var.my_auto_var}
    my_default_var: ${var.my_default_var}
    my_var_a: ${var.my_var_a}
  EOT
}