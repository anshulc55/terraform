provider "aws" {
  region = var.AWS_REGION
}

data "aws_region" "current" {
}

data "aws_availability_zones" "available" {
}

provider "http" {
}