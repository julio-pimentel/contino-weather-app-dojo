resource "aws_iam_role" "EcsExecutionRole" {
  name = var.iam_role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ecs-tasks.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    Name = var.iam_role_name
  }
}

resource "aws_iam_policy" "EcsEcrAccess" {
  name = var.iam_policy_name
  path = "/"
  description = "Enable ECS to pull the uploaded weather-app docker image from the ECR service"

  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ecr:BatchCheckLayerAvailability",
                "ecr:BatchGetImage",
                "ecr:GetDownloadUrlForLayer",
                "ecr:GetAuthorizationToken"
            ],
            "Resource": "*"
        }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "role_policy_attachment" {
  role = aws_iam_role.EcsExecutionRole.name
  policy_arn = aws_iam_policy.EcsEcrAccess.arn
}

resource "aws_ecr_repository_policy" "foopolicy" {
  repository = aws_ecr_repository.ecr_repo.name

  policy = <<EOF
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Sid": "Attach ECR Policy with IAM Role",
      "Effect": "Allow",
      "Principal": {
        "AWS": "${aws_iam_role.EcsExecutionRole.arn}"
      },
      "Action": [
        "ecr:*"
      ]
    }
  ]
}
EOF
}
