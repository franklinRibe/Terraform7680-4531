module "create_vpc" {
  source         = "./gcp-network"
  vpc-name       = "vpc-aula"
  subnet-name-us = "us-east1"
  ip-us-subnet   = "10.0.0.0/8"
  region-us      = "us-east1"
  fw-name        = "fw-rule"
  protocol-allow = "udp"
  ports-allow    = ["53", "1194"]
}

module "create_vm" {
  source       = "./gcp-instance"
  vm-name      = "vm-aula"
  machine_type = "e2-micro"
  zone         = "us-east1-b"
  allow-stop   = true
  image        = "ubuntu-os-cloud/ubuntu-1604-lts"
  network_interface = module.create_vpc.subnet_self_link
}

module "vm_rh" {
  source       = "./gcp-instance"
  vm-name      = "vm-asia"
  machine_type = "f1-micro"
  zone         = "asia-east1-b"
  allow-stop   = true
  image        = "ubuntu-os-cloud/ubuntu-1604-lts"
  network_interface = module.create_vpc.subnet_asia-self_link
}