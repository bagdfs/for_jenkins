resource "google_storage_bucket" "vm-mat-raw-data" {
  name     = "vm-mat-raw-data-${var.env}"
  location = "EU"
  project = "${var.project}"
  }

resource "google_storage_bucket" "vm-mat-trans-data" {
  name     = "vm-mat-raw-trans-${var.env}"
  location = "EU"
  project = "${var.project}"
  }  
  
resource "google_storage_bucket" "vm-mat-agg-data" {
  name     = "vm-mat-raw-agg-${var.env}"
  location = "EU"
  project = "${var.project}"
  }  

 