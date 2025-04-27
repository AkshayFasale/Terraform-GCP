# Compute engine instance
resource "google_compute_instance" "instance1" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
      name = "my-instance-01" }
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
  tags                    = ["foo", "web"]
  metadata_startup_script = "sudo apt update && sudo apt install apache2 -y"

}

# Firewall rule to allow HTTP traffic
resource "google_compute_firewall" "my-firewall" {
  name    = "allow-http"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["web"]

}

