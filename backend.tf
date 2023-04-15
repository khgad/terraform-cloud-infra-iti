terraform {
  backend "s3" {
    bucket         = "terraform-tfstate-iti43"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-tfstate"
  }
}
