# ----------------------------------------------------------------------------------------------------------------------
# Zookeeper outputs
# ----------------------------------------------------------------------------------------------------------------------

output "id_zookeeper" {
  description = "ID da instância"
  value       = "${module.zookeeper_ec2.id[0]}"
}

output "ami_zookeeper" {
  description = "AMI da instância"
  value       = "${module.zookeeper_ec2.ami[0]}"
}

output "availability_zone_zookeeper" {
  description = "AZ onde a instância está provisionada"
  value       = "${module.zookeeper_ec2.availability_zone[0]}"
}

output "credit_specification_zookeeper" {
  description = "Especificação de créditos da instância"
  value       = "${module.zookeeper_ec2.credit_specification[0]}"
}

output "key_name_zookeeper" {
  description = "Key Pair da instância"
  value       = "${module.zookeeper_ec2.key_name[0]}"
}

output "vpc_security_group_ids_zookeeper" {
  description = "Lista de IDs dos security groups vinculados à instância"
  value       = "${module.zookeeper_ec2.vpc_security_group_ids[0]}"
}

output "subnet_id_zookeeper" {
  description = "ID da subnet onde a instância foi provisionada"
  value       = "${module.zookeeper_ec2.subnet_id[0]}"
}

output "primary_network_interface_id_zookeeper" {
  description = "ID da interface primária da instância"
  value       = "${module.zookeeper_ec2.primary_network_interface_id[0]}"
}

output "private_dns_zookeeper" {
  description = "DNS privado da instância"
  value       = "${module.zookeeper_ec2.private_dns[0]}"
}

output "private_ip_zookeeper" {
  description = "IP privado da instância"
  value       = "${module.zookeeper_ec2.private_ip[0]}"
}

output "public_dns_zookeeper" {
  description = "DNS público da instância"
  value       = "${module.zookeeper_ec2.public_dns[0]}"
}

output "public_ip_zookeeper" {
  description = "IP público da instância"
  value       = "${module.zookeeper_ec2.public_ip[0]}"
}

# ----------------------------------------------------------------------------------------------------------------------
# Kafka outputs
# ----------------------------------------------------------------------------------------------------------------------

output "id_kafka" {
  description = "ID da instância"
  value       = "${module.kafka_ec2.id[0]}"
}

output "ami_kafka" {
  description = "AMI da instância"
  value       = "${module.kafka_ec2.ami[0]}"
}

output "availability_zone_kafka" {
  description = "AZ onde a instância está provisionada"
  value       = "${module.kafka_ec2.availability_zone[0]}"
}

output "credit_specification_kafka" {
  description = "Especificação de créditos da instância"
  value       = "${module.kafka_ec2.credit_specification[0]}"
}

output "key_name_kafka" {
  description = "Key Pair da instância"
  value       = "${module.kafka_ec2.key_name[0]}"
}

output "vpc_security_group_ids_kafka" {
  description = "Lista de IDs dos security groups vinculados à instância"
  value       = "${module.kafka_ec2.vpc_security_group_ids[0]}"
}

output "subnet_id_kafka" {
  description = "ID da subnet onde a instância foi provisionada"
  value       = "${module.kafka_ec2.subnet_id[0]}"
}

output "primary_network_interface_id_kafka" {
  description = "ID da interface primária da instância"
  value       = "${module.kafka_ec2.primary_network_interface_id[0]}"
}

output "private_dns_kafka" {
  description = "DNS privado da instância"
  value       = "${module.kafka_ec2.private_dns[0]}"
}

output "private_ip_kafka" {
  description = "IP privado da instância"
  value       = "${module.kafka_ec2.private_ip[0]}"
}

output "public_dns_kafka" {
  description = "DNS público da instância"
  value       = "${module.kafka_ec2.public_dns[0]}"
}

output "public_ip_kafka" {
  description = "IP público da instância"
  value       = "${module.kafka_ec2.public_ip[0]}"
}

# ----------------------------------------------------------------------------------------------------------------------
# App outputs
# ----------------------------------------------------------------------------------------------------------------------

output "id_app" {
  description = "ID da instância"
  value       = "${module.app_ec2.id[0]}"
}

output "ami_app" {
  description = "AMI da instância"
  value       = "${module.app_ec2.ami[0]}"
}

output "availability_zone_app" {
  description = "AZ onde a instância está provisionada"
  value       = "${module.app_ec2.availability_zone[0]}"
}

output "credit_specification_app" {
  description = "Especificação de créditos da instância"
  value       = "${module.app_ec2.credit_specification[0]}"
}

output "key_name_app" {
  description = "Key Pair da instância"
  value       = "${module.app_ec2.key_name[0]}"
}

output "vpc_security_group_ids_app" {
  description = "Lista de IDs dos security groups vinculados à instância"
  value       = "${module.app_ec2.vpc_security_group_ids[0]}"
}

output "subnet_id_app" {
  description = "ID da subnet onde a instância foi provisionada"
  value       = "${module.app_ec2.subnet_id[0]}"
}

output "primary_network_interface_id_app" {
  description = "ID da interface primária da instância"
  value       = "${module.app_ec2.primary_network_interface_id[0]}"
}

output "private_dns_app" {
  description = "DNS privado da instância"
  value       = "${module.app_ec2.private_dns[0]}"
}

output "private_ip_app" {
  description = "IP privado da instância"
  value       = "${module.app_ec2.private_ip[0]}"
}

output "public_dns_app" {
  description = "DNS público da instância"
  value       = "${module.app_ec2.public_dns[0]}"
}

output "public_ip_app" {
  description = "IP público da instância"
  value       = "${module.app_ec2.public_ip[0]}"
}

# ----------------------------------------------------------------------------------------------------------------------
# Prometheus outputs
# ----------------------------------------------------------------------------------------------------------------------

output "id_prometheus" {
  description = "ID da instância"
  value       = "${module.prometheus_ec2.id[0]}"
}

output "ami_prometheus" {
  description = "AMI da instância"
  value       = "${module.prometheus_ec2.ami[0]}"
}

output "availability_zone_prometheus" {
  description = "AZ onde a instância está provisionada"
  value       = "${module.prometheus_ec2.availability_zone[0]}"
}

output "credit_specification_prometheus" {
  description = "Especificação de créditos da instância"
  value       = "${module.prometheus_ec2.credit_specification[0]}"
}

output "key_name_prometheus" {
  description = "Key Pair da instância"
  value       = "${module.prometheus_ec2.key_name[0]}"
}

output "vpc_security_group_ids_prometheus" {
  description = "Lista de IDs dos security groups vinculados à instância"
  value       = "${module.prometheus_ec2.vpc_security_group_ids[0]}"
}

output "subnet_id_prometheus" {
  description = "ID da subnet onde a instância foi provisionada"
  value       = "${module.prometheus_ec2.subnet_id[0]}"
}

output "primary_network_interface_id_prometheus" {
  description = "ID da interface primária da instância"
  value       = "${module.prometheus_ec2.primary_network_interface_id[0]}"
}

output "private_dns_prometheus" {
  description = "DNS privado da instância"
  value       = "${module.prometheus_ec2.private_dns[0]}"
}

output "private_ip_prometheus" {
  description = "IP privado da instância"
  value       = "${module.prometheus_ec2.private_ip[0]}"
}

output "public_dns_prometheus" {
  description = "DNS público da instância"
  value       = "${module.prometheus_ec2.public_dns[0]}"
}

output "public_ip_prometheus" {
  description = "IP público da instância"
  value       = "${module.prometheus_ec2.public_ip[0]}"
}

# ----------------------------------------------------------------------------------------------------------------------
# Grafana outputs
# ----------------------------------------------------------------------------------------------------------------------

output "id_grafana" {
  description = "ID da instância"
  value       = "${module.grafana_ec2.id[0]}"
}

output "ami_grafana" {
  description = "AMI da instância"
  value       = "${module.grafana_ec2.ami[0]}"
}

output "availability_zone_grafana" {
  description = "AZ onde a instância está provisionada"
  value       = "${module.grafana_ec2.availability_zone[0]}"
}

output "credit_specification_grafana" {
  description = "Especificação de créditos da instância"
  value       = "${module.grafana_ec2.credit_specification[0]}"
}

output "key_name_grafana" {
  description = "Key Pair da instância"
  value       = "${module.grafana_ec2.key_name[0]}"
}

output "vpc_security_group_ids_grafana" {
  description = "Lista de IDs dos security groups vinculados à instância"
  value       = "${module.grafana_ec2.vpc_security_group_ids[0]}"
}

output "subnet_id_grafana" {
  description = "ID da subnet onde a instância foi provisionada"
  value       = "${module.grafana_ec2.subnet_id[0]}"
}

output "primary_network_interface_id_grafana" {
  description = "ID da interface primária da instância"
  value       = "${module.grafana_ec2.primary_network_interface_id[0]}"
}

output "private_dns_grafana" {
  description = "DNS privado da instância"
  value       = "${module.grafana_ec2.private_dns[0]}"
}

output "private_ip_grafana" {
  description = "IP privado da instância"
  value       = "${module.grafana_ec2.private_ip[0]}"
}

output "public_dns_grafana" {
  description = "DNS público da instância"
  value       = "${module.grafana_ec2.public_dns[0]}"
}

output "public_ip_grafana" {
  description = "IP público da instância"
  value       = "${module.grafana_ec2.public_ip[0]}"
}
