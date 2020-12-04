#Define Variable for Custom Module VPC

variable "AWS_REGION" {
    type    = string
    default = "us-east-2"
}

variable "ENVIRONMENT" {
    type    = string
    default = ""
}