resource "aws_lb" "Amrize_Testing_LB" {
  name               = "${var.tags.cloud}-${var.tags.project}-ALB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = var.security_group_ids
  subnets            = var.public_subnet_ids

  enable_deletion_protection = false

tags = {
    "Name" = "ALB-${var.vpc_variables.Name}"
    "date" = var.tags["date"]
    "owner" = var.tags["owner"]
    "cloud" = var.tags["cloud"]
    "IAC" = var.tags["IAC"]
    "IAC_Version" = var.tags["IAC_Version"]
    "project" = var.tags["project"]
    "region" = var.tags["region"]    
  }
}

# ALB Listener
resource "aws_lb_listener" "web" {
  load_balancer_arn = aws_lb.Amrize_Testing_LB.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = var.target_group_arn
  }
}