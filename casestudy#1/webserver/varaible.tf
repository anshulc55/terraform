variable "SSH_CIDR_WEB_SERVER" {
    type = string
    default = "0.0.0.0/0"
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "USER_DATA_FOR_WEBSERVER" {
    type = string
    default = "./demo_code/web.sh"
}
variable "AMIS" {
    type = map
    default = {}
    
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

variable "public_key_path" {
  description = "Public key path"
  default = "~/.ssh/levelup_key.pub"
}