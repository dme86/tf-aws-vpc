output "arn" {
  description = "Amazon Resource Name (ARN) of VPC"
  value       = element(concat(aws_vpc.this.*.arn, [""]), 0)
}

output "id" {
  description = "The ID of the VPC"
  value       = element(concat(aws_vpc.this.*.id, [""]), 0)
}

output "cidr_block" {
  description = "The CIDR block of the VPC"
  value       = element(concat(aws_vpc.this.*.cidr_block, [""]), 0)
}

output "instance_tenancy" {
  description = "Tenancy of instances spin up within VPC."
  value       = element(concat(aws_vpc.this.*.instance_tenancy, [""]), 0)
}

output "enable_dns_support" {
  description = "Whether or not the VPC has DNS support."
  value       = element(concat(aws_vpc.this.*.enable_dns_support, [""]), 0)
}

output "enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support."
  value       = element(concat(aws_vpc.this.*.enable_dns_hostnames, [""]), 0)
}

output "enable_classiclink" {
  description = "Whether or not the VPC has Classiclink enabled."
  value       = element(concat(aws_vpc.this.*.enable_classiclink, [""]), 0)
}

output "main_route_table_id" {
  description = "The ID of the main route table associated with this VPC. Note that you can change a VPC's main route table by using an aws_main_route_table_association."
  value       = element(concat(aws_vpc.this.*.main_route_table_id, [""]), 0)
}

output "default_network_acl_id" {
  description = "The ID of the network ACL created by default on VPC creation."
  value       = element(concat(aws_vpc.this.*.default_network_acl_id, [""]), 0)
}

output "default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation."
  value       = element(concat(aws_vpc.this.*.default_security_group_id, [""]), 0)
}

output "default_route_table_id" {
  description = "The ID of the route table created by default on VPC creation."
  value       = element(concat(aws_vpc.this.*.default_route_table_id, [""]), 0)
}

output "ipv6_association_id" {
  description = "The association ID for the IPv6 CIDR block."
  value       = element(concat(aws_vpc.this.*.ipv6_association_id, [""]), 0)
}

output "ipv6_cidr_block" {
  description = "The IPv6 CIDR block."
  value       = element(concat(aws_vpc.this.*.ipv6_cidr_block, [""]), 0)
}

output "owner_id" {
  description = "The ID of the AWS account that owns the VPC."
  value       = element(concat(aws_vpc.this.*.owner_id, [""]), 0)
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = element(concat(aws_vpc.this.*.tags_all, [""]), 0)
}
