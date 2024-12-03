variable "instance_types" {
  description = "A map of instance types for different environments"
  type        = map(string)
  default = {
    "dev"   = "t2.micro"
    "stage" = "t2.medium"
    "prod"  = "t2.xlarge"
  }
}

variable "ami_ids" {
  description = "A map of AMI IDs for different regions"
  type        = map(string)
  default = {
    "ap-south-1" = "ami-053b12d3152c0cc71"  # Replace with valid AMI ID for Mumbai
    "us-east-1"  = "ami-0866a3c8686eaeeba"  # Replace with valid AMI ID for Virginia
    "us-west-1"  = "ami-0da424eb883458071"  # Replace with valid AMI ID for Northern California
  }
}

