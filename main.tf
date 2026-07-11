provider "aws" {
  # mtlb kis cloud platform per kaam kar rahe ho
  region = "eu-north-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c55b159cbfafe1f0"   # apna actual valid AMI ID daalo
  instance_type = "t3.micro"

  tags = {
    Name = "MyFirstTerraformEC2"
  }
}