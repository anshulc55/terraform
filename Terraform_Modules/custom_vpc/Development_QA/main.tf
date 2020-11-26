module "dev-qa-vpc"{
    source                          = "../../custom_vpc"

    vpcname                         = "dev02-qa-vpc"
    cidr                            = "10.0.1.0/24"
    enable_dns_support              = "true"
    enable_classiclink              = "false"
    enable_classiclink_dns_support  = "false"
    enable_ipv6                     = "false"
    vpcenvironment                  = "Development-QA-Engineering"
    AWS_REGION                      = "us-east-1"

}