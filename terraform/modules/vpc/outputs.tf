output "vpc_id" {
  description = "ID da VPC"
  value       = "${aws_vpc.main.id}"
}

output "cidr_block" {
  description = "Bloco CIDR da VPC"
  value       = "${aws_vpc.main.cidr_block}"
}

output "azs" {
  description = "Lista com as AZs utilizadas no provisionamento das subnets"
  value       = "${local.azs}"
}

output "default_security_group_id" {
  description = "ID do security group default da VPC"
  value       = "${element(coalescelist(aws_security_group.default.*.id, list("")), 0)}"
}

output "private_subnet_ids" {
  description = "Lista com os IDs das subnets privadas da VPC"
  value       = "${aws_subnet.private.*.id}"
}

output "private_route_table_id" {
  description = "ID da route table privada da VPC"
  value       = "${element(coalescelist(aws_route_table.private.*.id, list("")), 0)}"
}
