### terraform vpc module

This module creates a simple VPC

## Example for main.tf

```hcl
module "vpc" {
  source         = "github.com/dme86/tf-aws-vpc"
  cidr_block     = "10.0.0.0/24"
   tags          = {
    Owner        = "foo"
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
