// this is reusable module for google resources

// block for google compute network
resource "google_compute_network" "vpc_network" {
  name = "${var.network_name}"
}

// block for google compute instance
resource "google_compute_instance" "vm_instance" {
  name         = "${var.instance_name}"
  machine_type = "${var.instance_type}"
  tags = "${var.instance_tags}"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}