output "vpc_id" {
  description = "ID of the custom VPC"
  value       = google_compute_network.vpc_network001.id
}

output "vpc_name" {
  description = "Name of the custom VPC"
  value       = google_compute_network.vpc_network001.name
}

output "subnet_ids" {
  description = "Map of subnet names to their IDs"
  value       = { for k, v in google_compute_subnetwork.subnet : k => v.id }
}

output "http_firewall_name" {
  description = "Name of the HTTP firewall rule"
  value       = google_compute_firewall.my-firewall.name
}

output "ssh_firewall_name" {
  description = "Name of the SSH firewall rule (if created)"
  value       = var.enable_ssh ? google_compute_firewall.firewall_ssh[0].name : null
}