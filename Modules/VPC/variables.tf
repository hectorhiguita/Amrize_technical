
variable "vpc_variables" {
  description = "Configuration variables for VPC"
  type        = map(string)
  
  validation {
    condition = contains(keys(var.vpc_variables), "CIDR") && contains(keys(var.vpc_variables), "Name")
    error_message = "vpc_variables must contain 'CIDR' and 'Name' keys."
  }
}

variable "subnets" {
  description = "Map of subnet names to CIDR blocks"
  type        = map(string)
  
  validation {
    condition = length(var.subnets) >= 2
    error_message = "At least 2 subnets must be provided."
  }
}

variable "ingress_ports_list" {
  description = "List of ingress ports for security group"
  type        = list(number)
}

variable "sg_ingress_cidr" {
  description = "CIDR block for security group ingress rules"
  type        = string

}

variable "tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default     = {}
}

variable "egress_ports_list" {
  description = "Egress port for security group"
  type        = number
}

variable "egress_cidr_blocks" {
  description = "List of CIDR blocks allowed for egress traffic"
  type        = list(string)
}