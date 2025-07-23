variable "ECR_Name" {
  description = "value for ECR repository name"
  type        = string
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