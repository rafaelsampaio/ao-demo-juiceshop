locals {
  juiceshop-vars = {
    app_tenant    = "ecommerce"
    app_name      = "juiceshop"
    app_address   = var.app-address
    app_node_port = "8000"

    app_nodes = ["10.1.20.2", "10.1.20.3"]
  }

  juiceshop-as3 = templatefile("${path.module}/juiceshop-basic.json.tftpl", local.juiceshop-vars)
}

resource "bigip_as3" "juiceshop" {
  as3_json = local.juiceshop-as3
}

