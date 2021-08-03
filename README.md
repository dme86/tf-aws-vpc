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

## Attributes
|Attribute|Default|
|--|--|
|enable_dns_support|true|
|enable_dns_hostnames|false|
|enable_classiclink|false|
|enable_classiclink_dns_support|false|
|assign_generated_ipv6_cidr_block|false|

## More

Check out my other [terraform-aws-modules](https://github.com/dme86?tab=repositories&q=tf-aws)

## Contact

[Linkedin](https://www.linkedin.com/in/dmeier86/)
