terraform {
  backend "gcs" {
    bucket = "bh-tf-backend-states"
    prefix = "env/dev"
  }
}