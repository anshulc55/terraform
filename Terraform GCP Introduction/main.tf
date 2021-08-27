provider "google" {
    credentials = file("SERVICE_ACCOUNT_JSON_LOCATION")

    project = "service-demo-project-276314"
    region  = "us-east1"
    zone    = "us-east1-c"
}

resource "google_compute_network" "vpc_network" {
    name                    = "practice-network"
    auto_create_subnetworks = "true"
}

terraform {
  backend "gcs" {
    bucket  = "tf-state-prod"
    prefix  = "terraform/state"
    credentials = file("")
  }
}