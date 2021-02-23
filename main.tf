provider "aws" {
    region = var.region
}

resource "aws_instance" "test" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    tags = {
        Name = "TESTE"
    }
    vpc_security_group_ids = [aws_security_group.test-ssh.id]
    depends_on = [aws_security_group.test-ssh]
}