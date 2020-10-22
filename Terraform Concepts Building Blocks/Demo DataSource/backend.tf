terraform {
    backend "s3" {
        bucket = "tf-state-98fty"
        key    = "development/terraform_state"
        region = "us-east-2"
    }
}