// this is reusable module for google resources

// block for google compute network
resource "google_compute_network" "vpc_network" {
  name = "${var.network_name}"

  // adding a provisioner to execute locally
  // we use self object to get the parent properties inside provisioners

  provisioner "local-exec" {
    command = "echo network name is ${self.name}"
    on_failure = continue
  }

  provisioner "local-exec" {
    command = "echo first"
    on_failure = fail   // this is default behaviour
  }

  // this will only run when this resource will be destroyed

  provisioner "local-exec" {
    when = destroy
    command = "echo second"
  }
}

// block for google compute instance
resource "google_compute_instance" "vm_instance" {
  name         = "${var.instance_name}"
  machine_type = "${var.instance_type}"
  tags = "${var.instance_tags}"
  allow_stopping_for_update = true

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