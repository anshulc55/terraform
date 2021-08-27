variable project {
  type        = string
  default     = "service-demo-project-276314"
  description = "GCP Project ID"
}


variable region {
  type        = string
  default     = "us-east1"
  description = "GCP Respource Deployment region"
}

variable zone {
  type        = string
  default     = "us-east1-c"
  description = "GCP Respource Deployment Zone"
}

variable subnet_01_ip {
  type        = string
  default     = "10.10.10.0/24"
  description = "CIDR Range of Subnet 01 IP"
}

variable subnet_02_ip {
  type        = string
  default     = "10.10.20.0/24"
  description = "CIDR Range of Subnet 02 IP"
}

variable network_name {
  type        = string
  default     = "my-terraform-vpc-network"
  description = "GCP terraform VPC Network Name"
}



