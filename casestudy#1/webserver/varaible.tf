variable "SSH_CIDR_WEB_SERVER" {
    type = string
    default = "0.0.0.0/0"
}

variable "WEB_SERVER_INSTANCE_TYPE"{
    type = string
    default = "t2.micro"
}


variable "USER_DATA_FOR_WEBSERVER" {
    type = string
    default = "./demo_code/web.sh"
}

variable "AWS_REGION" {
    type        = string
    default     = "us-east-2"
}

variable "ENVIRONMENT" {
  description = "AWS VPC Environment Name"
  type        = string
  default     = "Development"
}