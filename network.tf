resource "google_compute_network" "vpc_network" {
  name = "vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "us-central" {
  name          = "us-central"
  ip_cidr_range = "192.168.10.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_subnetwork" "asia-east" {
  name          = "asia-east"
  ip_cidr_range = "192.168.20.0/24"
  region        = "asia-east1"
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_firewall" "fw" {
  name    = "fw-all"
  network = google_compute_network.vpc_network.id

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "443", "22"]
  }
}