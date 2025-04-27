# Public IP Address
output "instance_public_ip_address" {
  description = "value of public ip address"
  value       = google_compute_instance.instance1.network_interface[0].access_config[0].nat_ip

}


# Private IP Address
output "instance_private_ip_address" {
  description = "value of private ip address"
  value       = google_compute_instance.instance1.network_interface[0].network_ip

}
