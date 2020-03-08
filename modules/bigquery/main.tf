resource "google_bigquery_dataset" "vm-mat-raw-ds" {
  dataset_id                  = "vm_mat_bq_raw_layer_${var.env}"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }

  access {
    role          = "OWNER"
    user_by_email = "bharathchandrasekar.90@gmail.com"
  }
}

resource "google_bigquery_dataset" "vm-mat-staging-ds" {
  dataset_id                  = "vm_mat_bq_staging_layer_${var.env}"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }

  access {
    role          = "OWNER"
    user_by_email = "bharathchandrasekar.90@gmail.com"
  }
}