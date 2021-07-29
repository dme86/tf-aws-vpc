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
