terraform {
    backend "gcs" {
        bucket = "terraform_pramod"
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
