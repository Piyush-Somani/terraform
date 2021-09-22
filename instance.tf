provider "google" {
  project = "poised-vial-319809"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_instance" "resource_name" {
  name         = "tst"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
