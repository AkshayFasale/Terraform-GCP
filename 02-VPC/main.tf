locals {
  default_network_message = "Default Network ID: ${data.google_compute_network.my-network.id}"
}

module "vpc" {
  source             = "./module/VPC"
  vpc_name           = "my-app-vpc"
  subnets            = var.subnets
  http_firewall_name = var.http_firewall_name
  ssh_firewall_name  = var.ssh_firewall_name
  enable_ssh         = var.enable_ssh
  ssh_source_ip      = var.ssh_source_ip
}

# Data source for GCP default properties
data "google_compute_network" "my-network" {
  project = var.project_id
  name    = "default"
}