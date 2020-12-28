variable "cluster-name" {
  default = "levelup-tf-eks-demo"
  type    = string
}

variable "AMIS" {
    type = map
    default = {
        us-east-1 = "ami-0f40c8f97004632f9"
        us-east-2 = "ami-05692172625678b4e"
        us-west-2 = "ami-0107478b0b67378c8"
        us-west-1 = "ami-0bf2eefa92a02a84f"
    }
}

variable "AWS_REGION" {
  default = "us-west-1"
}