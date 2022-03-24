module "ecs_mentoria" {
  source             = "../"
  app_port           = 80
  region             = "us-east-2"
  app_count          = 1
  fargate_cpu        = 256
  fargate_memory     = 512
  subnet_ids         = ["subnet-0378e5fbaf99cf083", "subnet-0f6754a4d9eae615e"]
  security_groups    = ["sg-04d7518e4a0b6fbb4"]
  vpc_id             = "vpc-03b22ad9e62fea94d"
  protocol           = "HTTP"
  policy_ssl         = null
  certificate_arn    = null
  family_name        = "mentoria-iac"
  service_name       = "mentoria-iac"
  cluster_name       = "mentoria-iac"
  template_container = "task-definitions.json"
  tags = {
    name = "cluster-ecs-mentoria-iac"
  }
}