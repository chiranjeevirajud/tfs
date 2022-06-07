output "aws_public_ip" {
    value = "${aws_instance.myinstance.public_ip}"
}
output "aws_private_ip" {
    value = "${aws_instance.myinstance.private_ip}"
}