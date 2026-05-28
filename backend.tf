terraform {
  backend "s3" {
    bucket         = "autonomous-sre-tfstate"
    key            = "app-infra/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "autonomous-sre-tflock"
    encrypt        = true
  }
}
