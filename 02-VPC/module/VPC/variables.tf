variable "subnets" {
  description = "Map of subnets with CIDR and region"
  type = map(object({
    cidr   = string
    region = string
  }))
}

variable "http_firewall_name" {
  description = "Name for HTTP firewall rule"
  type        = string
}

variable "ssh_firewall_name" {
  description = "Name for SSH firewall rule"
  type        = string
  default     = "my-app-vpc-allow-ssh"
}

variable "enable_ssh" {
  description = "Enable SSH firewall rule"
  type        = bool
  default     = true
}

variable "ssh_source_ip" {
  description = "Source IP for SSH access"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC network"
  type        = string

}