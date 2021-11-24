variable "api_url" {
  type = string
  description = "(Required) Rancher API URL"
}

variable "access_key" {
  type = string
  description = "(Required) Rancher Access Key"
}

variable "secret_key" {
  type = string
  description = "(Required) Rancher Secret Key"
}

# RKE config
variable "name" {
  type = string
  description = "(Required) Rancher RKE cluster name"
}

variable "description" {
  type = string
  description = "(Required) RKE cluster description"
}

variable "cluster_id" {
  type = string
  description = "(Required) Rancher RKE cluster ID"
}

variable "node_template" {
  type = string
  description = "(Required) Rancher RKE node template name"
}

variable "hostname_prefix" {
  type = string
  description = "(Optional) Hostname prefix for nodes. Default value is 'agentpool'"
  default = "agentpool"
}

variable "is_control_plane" {
  type = bool
  description = "(Optional) Is this a control plane node. Default value is false"
  default = false
}

variable "is_etcd" {
  type = bool
  description = "(Optional) Is this a etcd node. Default value is false"
  default = false
}

variable "is_worker" {
  type = bool
  description = "(Optional) Is this a worker node. Default value is false"
  default = false
}

variable "quantity" {
  type = number
  description = "(Optional) Number of nodes to create. Default value is 1"
  default = 3
}