# Configure Rancher provider
terraform {
  required_providers {
    rancher2 = {
      source = "rancher/rancher2"
    }
  }
}

provider "rancher2" {
  api_url = "https://sanes-rancher.westeurope.cloudapp.azure.com"
  access_key = var.access_key
  secret_key = var.secret_key
  insecure = true
}

data "rancher2_node_template" "node_template" {
  name = var.node_template
}

resource "rancher2_node_pool" "node_pool" {
  cluster_id = var.cluster_id
  name = var.name
  hostname_prefix = var.hostname_prefix
  node_template_id = data.rancher2_node_template.node_template.id

  quantity = var.quantity
  control_plane = var.is_control_plane
  etcd = var.is_etcd
  worker = is_worker
}