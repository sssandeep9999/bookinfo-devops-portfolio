variable "cluster_name" {
  type    = string
  default = "bookinfo"
}

resource "null_resource" "kind" {
  provisioner "local-exec" {
    command = <<EOT
      kind delete cluster --name ${var.cluster_name} || true
      kind create cluster --name ${var.cluster_name} --config ${path.module}/kind-config.yaml
    EOT
  }
}

output "cluster_name" {
  value = var.cluster_name
}
