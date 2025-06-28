provider "aws" {
  region = var.aws_region
}

module "dev_ec2_instance_linux" {
  source         = "git@github.com:satyam88/tf_aws_moulde.git//module/ec2?ref=v1.3"
  instance_type  = var.instancetype
  instance_count = var.instancecount
  aws_region = var.aws_region
}

