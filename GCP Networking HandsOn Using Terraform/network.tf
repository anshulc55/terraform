provider "google" {
    credentials = file("service-demo-project-276314-b21400581d00.json")

    project = var.project
    region  = var.region
    zone    = var.zone
}

module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.0"

    project_id   = var.project
    network_name = var.network_name
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = var.subnet_01_ip
            subnet_region         = "us-east1"
        },
        {
            subnet_name           = "subnet-02"
            subnet_ip             = var.subnet_02_ip
            subnet_region         = "us-east2"
            subnet_private_access = "true"
            subnet_flow_logs      = "true"
            description           = "This is Subnet Two."
        }
    ]

    secondary_ranges = {
        subnet-01 = [
            {
                range_name    = "subnet-01-secondary-01"
                ip_cidr_range = "192.168.64.0/24"
            },
        ]

        subnet-02 = []
    }
}