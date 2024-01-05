variable "minikube_nodes" {
  default     = 3
  description = "Number of nodes for Minikube"
}

variable "minikube_memory" {
  default     = 4096
  description = "Memory for Minikube in megabytes"
}

variable "minikube_cpu" {
  default     = 2
  description = "Number of CPU cores for Minikube"
}

variable "deployments_directory" {
  default     = "../deployments"
  description = "Path to the deployments directory"
}


