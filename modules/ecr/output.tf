output "ecr_repository_url" {
    value = aws_ecr_repository.ecr_repo.repository_url
}

output "ecs_task_execution_role_arn"{
    value = aws_iam_role.EcsExecutionRole.arn
}
