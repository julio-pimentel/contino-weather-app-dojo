variable "vpc_id" {
  type = string
}

variable "alb_sg_name" {
  type = string
}
variable "container_port" {  
  description = "Ingress and Egress port for Docker containers"
}

variable "ecs_tasks_sg_name" {
  type = string
}