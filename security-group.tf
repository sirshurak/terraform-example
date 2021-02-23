resource "aws_security_group" "test-ssh" {
    name = "test-ssh"
    description = "test-ssh"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.meu_ip
        description = "ssh"
    }

    tags = {
        Name = "TEST SSH"
    }
}