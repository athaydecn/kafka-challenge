output "vpc_id" {
  description = "ID da VPC"
  value       = "${module.vpc.vpc_id}"
}

output "cidr_block" {
  description = "Bloco CIDR da VPC"
  value       = "${module.vpc.cidr_block}"
}

output "azs" {
  description = "Lista com as AZs utilizadas no provisionamento das subnets"
  value       = "${module.vpc.azs}"
}

output "default_security_group_id" {
  description = "ID do security group default da VPC"
  value       = "${module.vpc.default_security_group_id}"
}

output "private_subnet_ids" {
  description = "Lista com os IDs das subnets privadas da VPC"
  value       = "${module.vpc.private_subnet_ids}"
}

output "private_route_table_id" {
  description = "ID da route table privada da VPC"
  value       = "${module.vpc.private_route_table_id}"
}
