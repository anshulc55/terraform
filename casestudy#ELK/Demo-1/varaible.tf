variable "AWS_REGION" {
default = "us-east-2"
}

provider "aws" {
  region     = "us-east-2"
}

variable "AMIS" {
    type = map
    default = {
        us-east-1 = "ami-0f40c8f97004632f9"
        us-east-2 = "ami-05edbb8e25e281608"
        us-west-2 = "ami-0352d5a37fb4f603f"
        us-west-1 = "ami-0f40c8f97004632f9"
    }
}

variable "PATH_TO_PUBLIC_KEY" {
  description = "Public key path"
  default = "~/.ssh/levelup_key.pub"
}