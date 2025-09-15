variable "cluster_name" {}
variable "dns_prefix" {}
variable "location" {}
variable "resource_group_name" {}
variable "ssh_key_path" {}
variable "node_count" {
  default = 3
}
variable "node_size" {
  default = "Standard_B2s"
}
