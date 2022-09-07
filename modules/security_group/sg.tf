resource "aws_security_group" "lb_sg" {
  vpc_id = var.vpc_id

  ingress {
    description = "Allow HTTP ingress traffic from anywhere"
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all egress traffic to anywhere"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.lb_sg_name
  }
}

resource "aws_security_group" "ecs_tasks_sg" {
  vpc_id = var.vpc_id

  ingress {
    description = "Allow traffic to container port"
    protocol    = "tcp"
    from_port   = var.container_port
    to_port     = var.container_port
    #security_groups = [aws_security_group.lb_sg.id]
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all egress traffic to anywhere"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.ecs_tasks_sg_name
  }
}