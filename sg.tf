resource "aws_security_group" "mysg" {
    name = "mysg"
    description = "new sg creation"
    vpc_id = "vpc-00068666b66ed5bc4"

    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 65535
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "jensg"
    }
}
