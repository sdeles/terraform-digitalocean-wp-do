variable "do_token" {
  type = string
}


variable "region" {
  type    = string
  default = "nyc1"
}

variable "wp_vm_count" {
  type        = number
  default     = "2"
  description = "Numero de maquinas para o WP"

  validation {
    condition     = var.wp_vm_count > 1
    error_message = "O numero minimo de maquinas é 2"
  }
}
