resource "google_compute_instance" "vm2" {
  name                      = var.vm-name
  machine_type              = var.machine_type
  zone                      = var.zone
  allow_stopping_for_update = var.allow-stop

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.us-central.id

    access_config {
      // Ephemeral IP
    }
  }
  metadata = {
    ssh-keys = var.ssh
  }
  metadata_startup_script = var.startup-script
}
