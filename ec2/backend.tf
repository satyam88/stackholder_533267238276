terraform {
  backend "s3" {
    bucket = "aws-stackholder-533267238276"
    key    = "dev-terraform.tfstate"
    region = "ap-south-1"
  }
}