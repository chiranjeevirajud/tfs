resource "aws_instance" "AWSServer" {
  ami = "ami-0a74bfeb190bd404f"
  instance_type = "t2.micro"
  key_name = "ubuntu"
  security_groups = ["jenkinssg"]
  tags = {
   Name = "Terrafrom Server"
  }
}