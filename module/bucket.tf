resource "random_string" "bucket" {
  length  = 8
  special = false
  upper   = false
}

resource "google_storage_bucket" "example_bucket" {
  name     = "${var.bucket_name}-${random_string.bucket.result}"
  location = var.bucket_location
  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}