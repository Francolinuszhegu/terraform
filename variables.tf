variable "vpc_name" {
  type        = string
  default     = "vpc_tf_app"
  description = " (Required, String) Specifies the name of the VPC. The name must be unique for a tenant."
}

variable "availability_zone" {
  type        = string
  default     = "cn-north-4a"
  description = " (Optional) This is the Huawei Cloud availability_zone. It must be provided when using static credentials authentication."
}

variable "subnet_name" {
  type        = string
  default     = "subnet_tf_app"
  description = "(Required, String) - Specifies the subnet name"
}

variable "vpc_cidr" {
  type        = string
  default     = "192.168.10.0/24"
  description = "Specifies the range of available subnets in the VPC. The value ranges from 10.0.0.0/8 to 10.255.255.0/24, 172.16.0.0/12 to 172.31.255.0/24, or 192.168.0.0/16 to 192.168.255.0/24."
}

variable "vpc_subnet_cidr" {
  type        = string
  default     = "192.168.10.0/24"
  description = "Specifies the network segment on which the subnet resides. The value must be in CIDR format and within the CIDR block of the VPC. The subnet mask cannot be greater than 28. Changing this creates a new Subnet."
}

variable "remote_ip_cidr" {
  type        = string
  description = " Specifies the remote CIDR, the value needs to be a valid CIDR (i.e. 192.168.0.0/16). Changing this creates a new security group rule."
}

variable "vpc_subnet_gateway_ip" {
  type        = string
  default     = "192.168.10.1"
  description = "(Required, String, ForceNew) - Specifies the gateway of the subnet. The value must be a valid IP address in the subnet segment. "
}

variable "vpc_subnet_dns_list" {
  type        = list(string)
  default     = ["100.125.1.250", "100.125.129.250"]
  description = "(Optional, List) - Specifies the DNS server address list of a subnet. This field is required if you need to use more than two DNS servers. This parameter value is the superset of both DNS server address 1 and DNS server address 2."
}
