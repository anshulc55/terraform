## Provider's Example

# Configure the AWS Provider
provider "aws" {
    version = "3.53.0"
    access_key = "AKIAXC3FBB2OJJC3DUIP"
    region     = "us-east-2"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    version = "2.72.0"
    features {}
}