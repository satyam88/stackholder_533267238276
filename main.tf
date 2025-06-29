provider "aws" {
  region = var.aws_region
}

module "dev_ec2_instance_linux" {
  source         = "git@github.com:satyam88/tf_aws_moulde.git//module/ec2?ref=v1.4"
  instance_type  = var.instancetype
  instance_count = var.instancecount
  aws_region = var.aws_region
}


module "vpc" {
  source = "git@github.com:satyam88/tf_aws_moulde.git//module/vpc?ref=v1.4"

  env             = "dev"
  azs             = ["ap-south-1a", "ap-south-1b"]
  private_subnets = ["10.0.0.0/19", "10.0.32.0/19"]
  public_subnets  = ["10.0.64.0/19", "10.0.96.0/19"]

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
    "kubernetes.io/cluster/dev-demo"  = "owned"
  }

  public_subnet_tags = {
    "kubernetes.io/role/elb"         = 1
    "kubernetes.io/cluster/dev-demo" = "owned"
  }
}