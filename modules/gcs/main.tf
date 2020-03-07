resource "google_storage_bucket" "vm-mat-raw-data1" {
  name     = "vm-mat-raw-data-${var.env}-1"
  location = "EU"
  project = "${var.project}"
  }
  