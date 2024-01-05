resource "null_resource" "minikube" {
  provisioner "local-exec" {
    command = "minikube start --nodes=${var.minikube_nodes} --memory=${var.minikube_memory} --cpus=${var.minikube_cpu} --base-image=gcr.io/k8s-minikube/kicbase:v0.0.42"
  }
}

resource "null_resource" "destroy_minikube" {
  provisioner "local-exec" {
    when = destroy

    command = <<-EOT
      minikube stop && minikube delete
    EOT
  }
}