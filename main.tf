<<<<<<< HEAD
# provider "aws" {
#   # mtlb kis cloud platform per kaam kar rahe ho
#   region = "eu-north-1"
# }

# resource "aws_instance" "my_ec2" {
#   ami           = "ami-0c55b159cbfafe1f0"   # apna actual valid AMI ID daalo
#   instance_type = "t3.micro"

#   tags = {
#     Name = "MyFirstTerraformEC2"
#   }
# }


=======
# provider "aws" {
#   # mtlb kis cloud platform per kaam kar rahe ho
#   region = "eu-north-1"
# }

# resource "aws_instance" "my_ec2" {
#   ami           = "ami-0c55b159cbfafe1f0"   # apna actual valid AMI ID daalo
#   instance_type = "t3.micro"

#   tags = {
#     Name = "MyFirstTerraformEC2"
#   }
# }

#  variables ---------------------------------->

provider "aws"{
  region = var.aws_region       // var created named as region
}

data "aws_ami" "amazon_linux"{         // data -> means resource of terraform( koi chij create ni krna h usko fetch krna h )
    most_recent = true  
    owners = ["amazon"]

    filter {
      name = "name"
      values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    }   
}

resource "aws_instance" "my_ec2"{
  ami = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
>>>>>>> f4c6548d897345a941132600bb2cac1e6a49395e
