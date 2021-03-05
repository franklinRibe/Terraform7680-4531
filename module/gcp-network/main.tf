### Criação da VPC

resource "google_compute_network" "vpc_network" {
  name                    = var.vpc-name
  auto_create_subnetworks = var.auto-network
}

## Criação da Sub-rede
resource "google_compute_subnetwork" "us-central" {
  name          = var.subnet-name-us
  ip_cidr_range = var.ip-us-subnet
  region        = var.region-us
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_subnetwork" "asia-east" {
  name          = var.subnet-name-asia
  ip_cidr_range = var.ip-asia-subnet
  region        = var.region-asia
  network       = google_compute_network.vpc_network.id
}

### Criação das regras de Firewall

resource "google_compute_firewall" "fw" {
  name    = var.fw-name
  network = google_compute_network.vpc_network.id

  allow {
    protocol = var.icmp-allow
  }

  allow {
    protocol = var.protocol-allow
    ports    = var.ports-allow
  }
}