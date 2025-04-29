output "default_network_id" {
  description = "ID of the default GCP network"
  value       = local.default_network_message
}

output "vpc_id" {
  description = "ID of the custom VPC"
  value       = module.vpc.vpc_id
}

output "vpc_name" {
  description = "Name of the custom VPC"
  value       = module.vpc.vpc_name
}

output "subnet_ids" {
  description = "Map of subnet names to their IDs"
  value       = module.vpc.subnet_ids
}

output "http_firewall_name" {
  description = "Name of the HTTP firewall rule"
  value       = module.vpc.http_firewall_name
}

output "ssh_firewall_name" {
  description = "Name of the SSH firewall rule (if created)"
  value       = module.vpc.ssh_firewall_name
}