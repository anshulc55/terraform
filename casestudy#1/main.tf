module "levelup-webserver" {
    source      = "./webserver"

    ENVIRONMENT = var.ENVIRONMENT
    AWS_REGION  = var.AWS_REGION

}

#Define Provider
provider "aws" {
  region = var.AWS_REGION
}

output "load_balancer_output" {
  description = "Load Balancer"
  value       = module.levelup-webserver.load_balancer_output
}