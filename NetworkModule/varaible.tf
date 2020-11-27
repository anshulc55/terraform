variable "region" {
  default = "us-east-2"
}

variable "public_key_path" {
  description = "Public key path"
  default = "~/.ssh/levelup_key.pub"
}

variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default = "ami-05692172625678b4e"
}

variable "instance_type" {
  description = "type for aws EC2 instance"
  default = "t2.micro"
}

variable "environment_tag" {
  description = "Environment tag"
  default = "Production"
}
