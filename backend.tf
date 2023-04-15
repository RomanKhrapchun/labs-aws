terraform {
  backend "s3" {
    bucket = "dark-willow-bucket"
    key = "lab1/terraform.tfstate"
    region = "eu-north-1"
    dynamodb_table = "state_lock"
    }
}