# Security group ID
output "alb_sg_id" {
  description = "ALB SG ID"
  value       = aws_security_group.lb_sg.id
}

output "ecs_tasks_sg_id" {
  description = "ECS tasks SG ID"
  value       = aws_security_group.ecs_tasks_sg.id
}