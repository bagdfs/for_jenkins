resource "google_storage_bucket" "vm-mat-raw-data" {
  name     = "vm-mat-raw-data-${var.env}"
  location = "EU"
  project = "${var.project}"
  }
  