terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.5.1"
    }
  }
}

provider "digitalocean" {
  # Configuration options
}

resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name    = "terraform-sample-cluster"
  region  = "fra1"
  version = "1.18.6-do.0"

  node_pool {
    name       = "sample-node-pool"
    size       = "s-1vcpu-2gb"
    auto_scale = false
    node_count = 1
  }

}
