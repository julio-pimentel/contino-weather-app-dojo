# Security group ID
resource "aws_ssm_parameter" "lb_sg_id" {
  name  = "/${var.ssm_prefix}/sg/lb_sg_id"
  type  = "String"
  overwrite = true
  value = aws_security_group.lb_sg.id
}

resource "aws_ssm_parameter" "ecs_tasks_sg_id" {
  name  = "/${var.ssm_prefix}/sg/ecs_tasks_sg_id"
  type  = "String"
  overwrite = true
  value = aws_security_group.ecs_tasks_sg.id
}