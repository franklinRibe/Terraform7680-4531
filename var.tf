############### Instance variables

variable "vm-name" {
  type    = list(string)
  default = ["vm-db","vm-rh", "vm-ti", "vm-app", "vm-web"]
}
variable "machine_type" {
  type    = string
  default = "f1-micro"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "allow-stop" {
  type    = bool
  default = true
}

variable "image" {
  type    = string
  default = "debian-cloud/debian-9"
}

variable "ssh" {
  type    = string
  default = "admin:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9uYBWftQDm8HssI28rsx1lLvmBCbfF/MOVDoULTAlpvEc+jqVQ0/E/Ti1MZinZKxOz43zxA6MF/CNY7qZkDHQUp4/PE8P5USMPGcPAGA+MhN7UE1cZ7Ylbq2L2t+Zdkw43oBWCDanP+G2PzT3UomTseWE9JRvVboJ435kmnRgC3fOPUn5A3tPwj/5jpAXmb/4CvfFuIFc2HqzpfNIA4PcPa48HZfzGoQDu1pZEYyHw5LLX8JfKo79UzY/N75KBYarQ9g4OTai08JE7idxBcsn9aE29RM+EoHTdbbMo6He19ZRRnrNZQXbwO3InbHEs/BaOHwynvpXQsEm4M8gp6rT fribeiro@debian"
}

variable "startup-script" {
  type    = string
  default = "sudo apt-get update && sudo apt-get install nginx -y"
}

################# Network variables

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
