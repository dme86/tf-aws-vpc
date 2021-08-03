### terraform vpc module

This module creates a simple VPC

## Example for main.tf

```hcl
module "vpc" {
  source         = "github.com/dme86/tf-aws-vpc?ref=v0.1"
  cidr_block     = "10.0.0.0/16"

   tags          = {

    Owner        = "Terraform"
    Foo          = "Bar"
   }

}
```

## Example outputs.tf

This example inside your root outputs.tf will output the ID, CIDR and the default Security Group ID of the VPC

```hcl
output "vpc_id" {
  value  = module.vpc.id
}

output "vpc_cidr_block" {
  value  = module.vpc.cidr_block
}

output "vpc_default_security_group_id" {
  value  = module.vpc.default_security_group_id
}
```

## Attributes
|Attribute|Description|Default|
|--|--|--|
|cidr_block|(Required) The CIDR block for the VPC.|10.0.0.0/16|
|instance_tenancy|(Optional) A tenancy option for instances launched into the VPC. Using either of the other options (dedicated or host) costs at least $2/hr.|default|
|enable_dns_support|(Optional) A boolean flag to enable/disable DNS support in the VPC.|true|
|enable_dns_hostnames|(Optional) A boolean flag to enable/disable DNS hostnames in the VPC.|false|
|enable_classiclink|(Optional) A boolean flag to enable/disable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic.|false|
|enable_classiclink_dns_support|(Optional) A boolean flag to enable/disable ClassicLink DNS Support for the VPC. Only valid in regions and accounts that support EC2 Classic.|false|
|assign_generated_ipv6_cidr_block|(Optional) Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block.|false|

## More

Check out my other [terraform-aws-modules](https://github.com/dme86?tab=repositories&q=tf-aws)

## Contact

[Linkedin](https://www.linkedin.com/in/dmeier86/)
