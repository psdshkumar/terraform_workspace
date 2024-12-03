provider "aws" {
  region = terraform.workspace == "dev" ? "ap-south-1" : terraform.workspace == "stage" ? "us-east-1" : "us-west-1"
}

