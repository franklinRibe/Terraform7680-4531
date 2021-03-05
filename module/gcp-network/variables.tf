variable "vpc-name" {
  type    = string
  default = "vpc"
}
variable "auto-network" {
  type    = bool
  default = false
}
variable "subnet-name-us" {
  type    = string
  default = "us-central"
}

variable "ip-us-subnet" {
  type    = string
  default = "192.168.10.0/24"
}

variable "region-us" {
  type    = string
  default = "us-central1"
}

variable "fw-name" {
  type    = string
  default = "fw-all"
}

variable "icmp-allow" {
  type    = string
  default = "icmp"
}

variable "protocol-allow" {
  type    = string
  default = "tcp"
}

variable "ports-allow" {
  type    = list(any)
  default = ["80", "443", "22"]
}

variable "subnet-name-asia" {
  type    = string
  default = "asia-east"
}

variable "ip-asia-subnet" {
  type    = string
  default = "192.168.20.0/24"
}

variable "region-asia" {
  type    = string
  default = "asia-east1"
}