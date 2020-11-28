provider "aws" {
  region     = var.AWS_REGION
}

module "ec2_cluster" {
    source = "github.com/terraform-aws-modules/terraform-aws-ec2-instance.git"

    name            = "my-cluster"
    ami             = "ami-05692172625678b4e"
    instance_type   = "t2.micro"
    subnet_id       = "subnet-f30171bf"
    instance_count  = var.environment == "Production" ? 2 : 1


    tags = {
    Terraform       = "true"
    Environment     = var.environment
    }
}