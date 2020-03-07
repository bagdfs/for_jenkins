terraform {
  backend "gcs" {
    bucket = "bh-tf-backend-states-new"
    prefix = "env/dev"
  }
}