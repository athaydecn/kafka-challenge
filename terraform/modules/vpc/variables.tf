variable "name" {
  description = "Nome da VPC"
}

variable "cidr" {
  description = "Bloco CIDR da VPC"
}

variable "azs" {
  description = "Availability Zones onde as subnets serão criadas; caso vazia, serão usadas as AZs da região configurada"
  default     = []
}

variable "enable_dns_hostnames" {
  description = "Habilita hostnames DNS na VPC"
  default     = true
}

variable "enable_dns_support" {
  description = "Habilita suporte a DNS na VPC"
  default     = true
}

variable "instance_tenancy" {
  description = "Tipo de locação de instâncias criadas na VPC"
  default     = "default"
}

variable "enable_private_route_table_propagation" {
  description = "Habilita propagação de rotas do VPN Gateway para a route table privada"
  default     = false
}

variable "enable_public_route_table_propagation" {
  description = "Habilita propagação de rotas do VPN Gateway para a route table pública"
  default     = false
}

variable "enable_database_route_table_propagation" {
  description = "Habilita propagação de rotas do VPN Gateway para a route table de bancos de dados"
  default     = false
}

variable "private_subnets" {
  description = "Lista de CIDRs das subnets privadas"
  default     = []
}

variable "private_subnet_names" {
  description = "Lista de nomes das subnets privadas"
  default     = []
}

variable "private_subnet_suffix" {
  description = "Sufixo para os nomes das subnets privadas"
  default     = "private-subnet"
}

variable "private_subnet_tags" {
  description = "Map de tags aplicadas às subnets privadas"
  default     = {}
}

variable "create_db_subnet_group" {
  description = "Habilita a criação de um DB subnet group contendo as subnets de bancos de dados"
  default     = true
}

variable "allow_all_egress" {
  description = "Habilita wildcard (`0.0.0.0/0`) como regra de saída do security group padrão"
  default     = true
}

variable "allow_all_ingress" {
  description = "Habilita wildcard (`0.0.0.0/0`) como regra de saída do security group padrão"
  default     = true
}

variable "allow_extra_cidr_blocks" {
  description = "Lista de CIDRs adicionais para liberação de entrada no security group da VPC; requer que `enable_default_security_group` seja habilitada"
  default     = []
}

variable "allow_extra_cidr_blocks_egress" {
  description = "Lista de CIDRs adicionais para liberação de saída no security group da VPC; requer que `enable_default_security_group` seja habilitada"
  default     = []
}

variable "peering_routes" {
  description = "Lista com CIDRs e IDs de VPC peerings de destino; cada item deve seguir o formato `0.0.0.0/0:pcx-abc123`"
  default     = []
}

variable "vpc_tags" {
  description = "Map de tags aplicadas à VPC"
  default     = {}
}

variable "tags" {
  description = "Map de tags comuns a todos os recursos"
  default     = {}
}

variable "enable_default_security_group" {
  description = "Habilita criação de um security group padrão para a VPC"
  default     = true
}

variable "default_security_group_description" {
  description = "Descrição do security group default da VPC"
  default     = ""
}
