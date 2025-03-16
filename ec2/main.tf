
module "ec2" {
  source          = "git@github.com:satyam88/aws_module_march_2025.git//modules/ec2?ref=v4.0.0"
  instance_type   = "t2.micro"
  aws_region      = "ap-south-1"
}