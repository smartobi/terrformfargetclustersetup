terraform {
  backend "s3" {
    config = {
        bucket = "backend225531074886bucket"
        key    = "devops/terraform.tfstate"
        region = "us-east-1"
    }
  }
}