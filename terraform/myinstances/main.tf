# ----------------------------------------------------------------------------------------------------------------------
# Provider
# ----------------------------------------------------------------------------------------------------------------------

provider "aws" {
  region = "sa-east-1"
  version = "~> 2.39"
  shared_credentials_file = "~/.aws/credentials"
  profile = "devopsinfra"
}

# ----------------------------------------------------------------------------------------------------------------------
# Data sources
# ----------------------------------------------------------------------------------------------------------------------

data "aws_vpc" "default" {
  default = false
}

data "aws_subnet_ids" "all" {
  vpc_id = "${data.aws_vpc.default.id}"
}

data "aws_security_group" "default" {
  vpc_id = "${data.aws_vpc.default.id}"

  filter {
    name   = "group-name"
    values = ["vpc-dev-default-sg"]
  }
}

data "aws_ami" "amazon_linux_2" {
  most_recent = true

  owners = ["285398391915"]

  filter {
    name   = "name"
    values = ["ami-centos-7-1.12.0-00-1538138520"]
  }
}

# ----------------------------------------------------------------------------------------------------------------------
# Zookeeper EC2 Instance
# ----------------------------------------------------------------------------------------------------------------------

module "zookeeper_ec2" {
  source = "../modules/ec2"

  instance_count = 1
  key_name = "my-key"

  name          = "Zookeeper"
  ami           = "${data.aws_ami.amazon_linux_2.image_id}"
  instance_type = "t3.micro"

  subnet_id                   = "${element(data.aws_subnet_ids.all.ids, 0)}"
  associate_public_ip_address = true
  vpc_security_group_ids      = ["${data.aws_security_group.default.id}"]

  ebs_optimized = false

  tags {
    Environment = "dev"
    Terraform   = "true"
  }
}

# ----------------------------------------------------------------------------------------------------------------------
# Kafka EC2 Instance
# ----------------------------------------------------------------------------------------------------------------------

module "kafka_ec2" {
  source = "../modules/ec2"

  instance_count = 1
  key_name = "my-key"

  name          = "Kafka"
  ami           = "${data.aws_ami.amazon_linux_2.image_id}"
  instance_type = "t3.small"

  subnet_id                   = "${element(data.aws_subnet_ids.all.ids, 0)}"
  associate_public_ip_address = true
  vpc_security_group_ids      = ["${data.aws_security_group.default.id}"]

  ebs_optimized = false

  tags {
    Environment = "dev"
    Terraform   = "true"
  }
}

# ----------------------------------------------------------------------------------------------------------------------
# App EC2 Instance
# ----------------------------------------------------------------------------------------------------------------------

module "app_ec2" {
  source = "../modules/ec2"

  instance_count = 2
  key_name = "my-key"

  name          = "App"
  ami           = "${data.aws_ami.amazon_linux_2.image_id}"
  instance_type = "t3.micro"

  subnet_id                   = "${element(data.aws_subnet_ids.all.ids, 0)}"
  associate_public_ip_address = true
  vpc_security_group_ids      = ["${data.aws_security_group.default.id}"]

  ebs_optimized = false

  tags {
    Environment = "dev"
    Terraform   = "true"
  }
}

# ----------------------------------------------------------------------------------------------------------------------
# Prometheus EC2 Instance
# ----------------------------------------------------------------------------------------------------------------------

module "prometheus_ec2" {
  source = "../modules/ec2"

  instance_count = 1
  key_name = "my-key"

  name          = "Prometheus"
  ami           = "${data.aws_ami.amazon_linux_2.image_id}"
  instance_type = "t3.micro"

  subnet_id                   = "${element(data.aws_subnet_ids.all.ids, 0)}"
  associate_public_ip_address = true
  vpc_security_group_ids      = ["${data.aws_security_group.default.id}"]

  ebs_optimized = false

  tags {
    Environment = "dev"
    Terraform   = "true"
  }
}

# ----------------------------------------------------------------------------------------------------------------------
# Grafana EC2 Instance
# ----------------------------------------------------------------------------------------------------------------------

module "grafana_ec2" {
  source = "../modules/ec2"

  instance_count = 1
  key_name = "my-key"

  name          = "Grafana"
  ami           = "${data.aws_ami.amazon_linux_2.image_id}"
  instance_type = "t3.micro"

  subnet_id                   = "${element(data.aws_subnet_ids.all.ids, 0)}"
  associate_public_ip_address = true
  vpc_security_group_ids      = ["${data.aws_security_group.default.id}"]

  ebs_optimized = false

  tags {
    Environment = "dev"
    Terraform   = "true"
  }
}
