terraform {
  backend "s3" {
    bucket = "docker-repo-satyam"
    key    = "533267238276-terraform.tfstate"
    region = "ap-south-1"
  }
}