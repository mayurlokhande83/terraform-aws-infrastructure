variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of CIDRs for public subnets"
}

variable "private_subnets" {
  type        = list(string)
  description = "List of CIDRs for private subnets"
}

variable "region" {
  type        = string
  description = "AWS region"
  default     = "ap-south-1"
}
