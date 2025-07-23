resource "aws_ecr_repository" "ECR_Amrize" {
  name                 = var.ECR_Name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
    "Name" = "ECR-${var.vpc_variables.Name}"
    "date" = var.tags["date"]
    "owner" = var.tags["owner"]
    "cloud" = var.tags["cloud"]
    "IAC" = var.tags["IAC"]
    "IAC_Version" = var.tags["IAC_Version"]
    "project" = var.tags["project"]
    "region" = var.tags["region"]    
  }
}