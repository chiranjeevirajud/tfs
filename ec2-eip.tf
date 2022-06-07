#Ec2 & EIP creation
provider "aws" {
  region = "ap-south-1"
  # Secret & Access key will be fetched from provider.tf
}

#EC2 m/c creation

resource "aws_instance" "ec2" {
    ami = "ami-0a74bfeb190bd404f"
    type = "t2.micro"
    key_name = "ubuntu"

    tags = {
        Name = "EC2 with EIP"
    }
}

resource "aws_eip" "ec2eip" {

}

resource "aws_eip_association" "ec2eip" {
    instance_id = aws_instance.ec2.id
    allocation_id = aws_eip.ec2eip.id
}