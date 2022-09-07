resource "aws_ssm_parameter" "ecr_repository_url" {
  name  = "/${var.ssm_resource_prefix}/ecr/ecr_repository_url"
  type  = "String"
  value = aws_ecr_repository.ecr_repo.repository_url
}

resource "aws_ssm_parameter" "ecs_task_execution_role_arn"{
  name  = "/${var.ssm_resource_prefix}/ecr/ecs_task_execution_role_arn"
  type  = "String"
  value = aws_iam_role.EcsExecutionRole.arn
}
