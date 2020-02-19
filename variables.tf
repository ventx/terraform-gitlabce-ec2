variable "ami" {
  description = "AMI to be used, default is Ubuntu 18.67 Bionic"
  default     = "ami-090f10efc254eaf55"
}

variable "region" {
  description = "AWS Region"
}

variable "vpc" {
  description = "AWS VPC"
}

variable "profile" {
  description = "AWS Profile"
}

variable "instancetype" {
  description = "EC2 instance type"

}

variable "instancename" {
  description = "EC2 instance name"

}

variable "keyname" {
  description = "SSH key name"

}

variable "domain" {
  description = "gitlab server TLD"

}


variable "owner" {
  description = "Owner Tag for AWS console"
}

variable "subdomain" {
  description = "Subdomain"
}

variable "subnetid" {
  description = "Subnet for the Gitlab Instance"
}
