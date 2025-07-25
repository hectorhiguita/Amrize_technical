variable "ECS_Name" {
  type = string
  description = "Name of the ECS cluster"
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs for ECS tasks"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID where ECS cluster will be created"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs for ECS tasks"
  type        = list(string)
}

variable "tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default     = {}
}

variable "vpc_variables" {
  description = "Configuration variables for VPC including CIDR and Name"
  type        = map(string)
}