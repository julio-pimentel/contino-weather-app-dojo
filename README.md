# Weather-App Infrastructure repository

This repository is used to deploy the required infrastructure in the Contino APAC AWS account. It requires the following aws credentials to be updated in Github Secrets before deploying this repo: `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY` and `AWS_SESSION_TOKEN`.
This project should be the first deployment of the app. 

<br> 

## 3 Musketeers

The provided `makefile`, `dockerfile` , and `docker-compose.yml` files work together to create a docker container which is used to run Terraform deployments and other supported commands. It expects AWS account credentials to be passed as environment variables.

To run a simple aws command, ensure you have set your aws temporary credentials in your local environment and run the following

```
make list_bucket
```

Deploying Terraform environment locally - creates tfplan file during plan as input to apply. Apply is auto-approved.

```
make run_plan
make run_apply
```

Destroying Terraform environment locally. Destroy plan is speculative. Destroy apply is auto-approved.

```
make run_destroy_plan
make run_destroy_apply
```
Terraform `init`, `validate` and `fmt` are run for each of the `make` commands above.

For more information on 3 Musketeers deployment method, visit the official site here. https://3musketeers.io/

<br> 

## GitHub Actions / Workflows
The following workflows are provided in this repository. These are located under `.github/workflows`.

| Workflow | Description | Environments | Trigger
|----------|-------------|--------------|--------|
| main.yml | Two step workflow to run a Terraform Plan and Terraform Apply following manual approvals. | approval | on.push.branch [master] ||
| destroy.yml | Two step workflow to run a speculative Terraform Destroy Plan and Terraform Destroy following manual approvals. | approval | on.push.branch [destroy] ||

Note: Pushing to `master` branch will trigger Terraform (TF) deploy. You will also need to create a branch named `destroy` in your GitHub repository. Not required locally and only used for pull requests `master -> destroy` to trigger TF destroy workflow.

Additionally, ONLY changes to the following files and paths will trigger a workflow.

```
    paths:
      - 'docker-compose.yml'
      - 'Makefile'
      - '.github/workflows/**'
      - '*dockerfile'
      - 'modules/**'
      - '**.tf'
```

<br> 

## Terraform IaC
The infrastructure is based on the following Terraform modules: 
* ECR: 1 repository and its IAM role and IAM policies. 
* Security Group: security groups for ALB and ECS. 
* VPC: 1 VPC network, 3 public and 3 private subnets, 1 IGW, 3 NGW, 3 public and 3 private route tables, and 1 S3 Gateway Endpoint.

### Inputs
---
<details open>
  <summary>Click to expand</summary>


| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bucket | S3 bucket name - must be globally unique | string | weather-app-infra-pimentel-bucket | yes |
| vpc_cidr | IPv4 CIDR block and block size |  string | 10.0.1.0/24 | yes |
| vpc_name | VPC name | string | weather-app-pimentel-vpc | yes |
| igw_name | Internet Gateway name | string | weather-app-pimentel-igw | yes |
| vpc_endpoint_name | VPC endpoint name | string | weather-app-pimentel-s3-gateway | yes |
| aws_region | Region where the project will be deployed | string | us-east-1 | yes |
| az_a | Availability Zone A | string | us-east-1a | yes |
| az_b | Availability Zone B | string | us-east-1b | yes |
| az_c | Availability Zone C | string | us-east-1c | yes |
| priv_sub_name_a | Private subnet A name | string | weather-app-pimentel-privateA | yes |
| priv_sub_name_b | Private subnet B name | string | weather-app-pimentel-privateB | yes |
| priv_sub_name_c | Private subnet C name | string | weather-app-pimentel-privateC | yes |
| pub_sub_name_a | Public subnet A name | string | weather-app-pimentel-publicA | yes |
| pub_sub_name_b | Public subnet B name | string | weather-app-pimentel-publicB | yes |
| pub_sub_name_c | Public subnet C name | string | weather-app-pimentel-publicC | yes |
| priv_sub_cidr_a | Private subnet A IPv4 CIDR block and block size | string | 10.0.1.0/26 | yes |
| priv_sub_cidr_b | Private subnet B IPv4 CIDR block and block size | string | 10.0.1.64/26 | yes |
| priv_sub_cidr_c | Private subnet C IPv4 CIDR block and block size | string | 10.0.1.128/26 | yes |
| pub_sub_cidr_a | Public subnet A IPv4 CIDR block and block size | string | 10.0.1.192/28 | yes |
| pub_sub_cidr_b | Public subnet B IPv4 CIDR block and block size | string | 10.0.1.208/28 | yes |
| pub_sub_cidr_c | Public subnet C IPv4 CIDR block and block size | string | 10.0.1.224/28 | yes |
| priv_rt_name_a | Private route table A | string | weather-app-pimentel-private-rt-a | yes |
| priv_rt_name_b | Private route table B | string | weather-app-pimentel-private-rt-b | yes |
| priv_rt_name_c | Private route table C | string | weather-app-pimentel-private-rt-c | yes | 
| pub_rt_name_a | Public route table A | string | weather-app-pimentel-public-rt-a | yes |
| pub_rt_name_b | Public route table B | string | weather-app-pimentel-public-rt-b | yes |
| pub_rt_name_c | Public route table C | string | weather-app-pimentel-public-rt-c | yes |
| eip_name_a | Elastic IP address A name | string | weather-app-pimentel-eip-a | yes |
| eip_name_b | Elastic IP address B name | string | weather-app-pimentel-eip-b | yes |
| eip_name_c | Elastic IP address C name | string | weather-app-pimentel-eip-c | yes |
| lb_sg_name | Security group name for Load Balancer | string | weather-app-pimentel-lb-sg | yes |
| ecs_tasks_sg_name | Security group name for ECS Tasks | string | weather-app-pimentel-ecs-sg | yes |
| container_port | Port for Docker containers | number | 3000 | yes |
| ecr_repo_name | ECR repository name | string | julio-pimentel-node-weather-app | yes |
| iam_role_name | ECS Task execution IAM role name | string | julio-pimentel-EcsExecutionRole | yes |
| iam_policy_name | ECS Task execution IAM policy | string | julio-pimentel-EcsEcrAccess | yes |


</details>

<br> 

<!-- OUTPUTS -->
### Outputs
---
<details open>
  <summary>Click to expand</summary>

| Name | Description |
|------|-------------|
| bucket_name | S3 bucket ARN | |
| bucket_name_arn | S3 bucket ARN | |
| vpc_id | VPC ID | |
| priv_cidr_id_a | Private subnet A ID | |
| priv_cidr_id_b | Private subnet B ID | |
| priv_cidr_id_c | Private subnet C ID | |
| pub_cidr_id_a | Public subnet A ID | |
| pub_cidr_id_b | Public subnet B ID | |
| pub_cidr_id_c | Public subnet C ID | |
| alb_sg_id | Security group for ALB ID | |
| ecs_tasks_sg_id | Security group for ECS Task ID | |
| ecr_repository_url | ECR repository URL | |
| ecs_task_execution_role_arn | ECS Task execution role ARN | |

</details>

<br>

### TF State Files
AWS S3 is used to host the TF state files. This is hosted by s3://pathways-dojo. 

```
terraform {
  required_version = ">= 0.13.0"
  backend "s3" {
    bucket = "pathways-dojo"
    key    = "julio-pimentel-infra-tfstate-main"
    region = "us-east-1"
  }
}
```