locals {
  "env" = "dev"
}

provider "google" {
  credentials = "/usr/bin/creds/serviceaccount.json"
  project = "${var.project}"
}

module "gcs" {
  source  = "../../modules/gcs"
  project = "${var.project}"
  env     = "${local.env}"
}