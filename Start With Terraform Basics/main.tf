## Provider's Example

# Configure the AWS Provider
provider "aws" {
    version = "3.53.0"
    access_key = "AKIAXQCRRJPD2W76GC75"
    secret_key = "ktEiMc02vL8IkxLAZkMrl5AUzUHAa0fZO73GkQUG"
    region     = "us-west-2"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    version = "2.72.0"
    features {}
}