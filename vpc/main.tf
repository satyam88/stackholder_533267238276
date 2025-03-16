module "vpc" {
  source = "git@github.com:satyam88/aws_module_march_2025.git//modules/vpc?ref=v4.0.0"

  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]

  region          = "us-east-1"
  availability_zones = ["us-east-1a", "us-east-1b"]
}
