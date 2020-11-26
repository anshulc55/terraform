module "dev-vpc"{
    source                          = "../../custom_vpc"

    vpcname                         = "dev01-vpc"
    cidr                            = "10.0.2.0/24"
    enable_dns_support              = "true"
    enable_classiclink              = "false"
    enable_classiclink_dns_support  = "false"
    enable_ipv6                     = "true"
    vpcenvironment                  = "Development-Engineering"

}