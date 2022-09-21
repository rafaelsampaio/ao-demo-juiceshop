output "app-url" {
  value = "http://${var.app-address}"
}

output "as3-template" {
  value = data.http.as3_template.response_body
}
