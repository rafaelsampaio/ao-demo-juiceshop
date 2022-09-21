#BIG-IP
variable "bigip-address" {}
variable "bigip-admin" {}
variable "bigip-passwd" { sensitive = true }

#App
variable "app-address" {}
