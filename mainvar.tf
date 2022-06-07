resource "aws_instance" "AWSServer" {
  ami = "${var.ami}"
  count = "${var.NumberofInstances}"
  instance_type = "${var.Instancetype}"
  key_name = "${var.key_name}"
  security_groups = ["jenkinssg"]
  tags = {
   Name = "Terrafrom Server"
  }
}