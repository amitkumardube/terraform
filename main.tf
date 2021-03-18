terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("./../my-first-project-298218-a7316b8c9560.json")
  project     = "my-first-project-298218"
  region      = var.region
  zone        = var.zone
}

resource "null_resource" "temporary" {
  triggers = {
    path = "${path.module}/../my-first-project-298218-a7316b8c9560.json"
  }
}

module "network_compute_instance" {
  source        = "./module"
  network_name  = "terraform-network"
  instance_name = "terraform-instance"
  instance_type = "f1-micro"
  instance_tags = ["web", "dev"]
  static_ip     = "terraform-static-ip"

  // setting variables for bucket

  bucket_name     = "getting-started-with-gcp"
  bucket_location = "US"
}

