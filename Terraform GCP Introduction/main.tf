provider "google" {
    credentials = file("service-demo-project-276314-b21400581d00.json")

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
    bucket  = "levelup360-terraform"
    prefix  = "terraform-practice"
    credentials = "service-demo-project-276314-b21400581d00.json"
  }
}