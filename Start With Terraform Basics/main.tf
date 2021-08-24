## Provider's Example

# Configure the AWS Provider
provider "aws" {
    region = "us-east-1"
    version = "3.53.0"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    version = "2.72.0"
    features {}
}