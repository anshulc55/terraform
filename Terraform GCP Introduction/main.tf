provider "google" {
    credentials = file("")

    project = "service-demo-project-276314"
    region  = "us-east1"
    zone    = "us-east1-c"
}

resource "google_compute_network" "vpc_network" {
    name                    = "practice-network"
    auto_create_subnetworks = "true"
}