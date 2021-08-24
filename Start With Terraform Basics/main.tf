## Provider's Example

# Configure the AWS Provider
provider "aws" {
    region = "us-east-1"
    version = "3.53.0"
    access_key = "AKIASMSIZOF4QD2NTPB6"
    secret_key = "SECRET_KEY_HERE"
    region     = "us-east-2"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    version = "2.72.0"
    features {}
}