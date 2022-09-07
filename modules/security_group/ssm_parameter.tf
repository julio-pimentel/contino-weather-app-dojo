# Security group ID
resource "aws_ssm_parameter" "alb_sg_id" {
  name  = "/${var.ssm_prefix}/sg/alb_sg_id"
  type  = "String"
  value       = aws_security_group.lb_sg.id
}

resource "aws_ssm_parameter" "ecs_tasks_sg_id" {
  name  = "/${var.ssm_prefix}/sg/alb_sg_id"
  type  = "String"
  value       = aws_security_group.ecs_tasks_sg.id
}