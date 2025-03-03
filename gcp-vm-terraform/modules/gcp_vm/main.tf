provider "google" {
  project     = var.project_id
  region      = var.region
}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
    access_config {
      // This enables an external IP
    }
  }

#  metadata = {
#    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
#  }

  tags = ["http-server"]
}

