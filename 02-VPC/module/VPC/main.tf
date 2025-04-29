resource "google_compute_network" "vpc_network001" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  for_each = var.subnets

  name          = each.key
  ip_cidr_range = each.value.cidr
  region        = each.value.region
  network       = google_compute_network.vpc_network001.id
}

resource "google_compute_firewall" "my-firewall" {
  name    = var.http_firewall_name
  network = google_compute_network.vpc_network001.id
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["web"]
}

resource "google_compute_firewall" "firewall_ssh" {
  count   = var.enable_ssh ? 1 : 0
  name    = var.ssh_firewall_name
  network = google_compute_network.vpc_network001.id
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = [var.ssh_source_ip]
  target_tags   = ["management"]
}