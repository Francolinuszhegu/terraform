resource "huaweicloud_vpc" "vpc" {
  name        = var.vpc_name
  cidr        = var.vpc_cidr
  description = "Creaye By ResourceFormation, please don't delete manually."
}

resource "huaweicloud_vpc_subnet" "subnet" {
  vpc_id            = huaweicloud_vpc.vpc.id
  name              = var.subnet_name
  cidr              = var.vpc_subnet_cidr
  gateway_ip        = var.vpc_subnet_gateway_ip
  dns_list          = var.vpc_subnet_dns_list
  availability_zone = var.availability_zone
}

