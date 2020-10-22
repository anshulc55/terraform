terraform {
    backend "s3-bucket" {
        bucket = "tf-state-98fty"
        key    = "development/terraform_state"
        region = "us-east-2"
    }
}