variable "my_default_var" {
  default = "default"
}

variable "my_var_a" {
  type = string
}

variable "my_auto_var" {
  type = string
}

variable "my_var_b_sensitive" {
  type = string
  sensitive = true
}
