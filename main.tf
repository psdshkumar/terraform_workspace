resource "aws_instance" "example" {
  ami           = var.ami_ids[terraform.workspace == "dev" ? "ap-south-1" : terraform.workspace == "stage" ? "us-east-1" : "us-west-1"]
  instance_type = var.instance_types[terraform.workspace]
  
  tags = {
    Name = "Terraform Example Instance"
  }
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
