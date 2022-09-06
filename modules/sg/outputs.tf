output "alb_sg_id" {
  description = "ALB SG ID"
  value       = aws_security_group.alb_sg_1.id
}

output "ecs_tasks_sg_id" {
  description = "ECS tasks SG ID"
  value       = aws_security_group.ecs_tasks_sg.id
}