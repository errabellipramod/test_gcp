terraform {
    backend "gcs" {
        bucket = "terraform _pramod"
    }
}

locals {
  gcp_id = "noble-district-373814"
}

provider "google" {
    project = "noble-district-373814"
}

provider "google" {
    alias = "atlantis"
    project = local.gcp_id
}

provider "google_beta"{
    project = local.gcp_id
}
