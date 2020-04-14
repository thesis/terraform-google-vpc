# generic vars
variable "region" {
  description = "The regions where resources are generated."
  type        = "string"
  default     = ""
}

variable "project" {
  description = "The project id of the project you want to create the bucket in."
  type        = "string"
  default     = ""
}

# vpc-network vars
variable "vpc_network_name" {
  description = "The name of your vpc-network."
  type        = "string"
  default     = ""
}

variable "routing_mode" {
  description = "Sets dynamic routing scope to global or regional.  Must be regional or global."
  type        = "string"
  default     = ""
}

# vpc-subnet vars
variable "vpc_subnet_prefix" {
  description = "prefix naming for any subnet created via the module."
  type        = "string"
  default     = "vpc-subnet"
}

## public subnet
variable "public_subnet_name" {
  description = "The primary public subnet name."
  type        = "string"
  default     = ""
}

variable "public_subnet_ip_cidr_range" {
  description = "The primary CIDR range for the public subnet."
  type        = "string"
  default     = ""
}

## private subnet
variable "private_subnet_name" {
  description = "The primary private subnet name."
  type        = "string"
  default     = ""
}

variable "private_subnet_ip_cidr_range" {
  description = "The primary CIDR range for the private subnet."
  type        = "string"
  default     = ""
}
