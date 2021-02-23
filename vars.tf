variable "region" {
    default = "us-east-1"
}

variable "ami" {
    default = "ami-047a51fa27710816e"
}

variable "meu_ip" {
    type = list
    default = ["177.62.107.179/32"]
}

variable "key_name" {
    default = "aquisicao"
}

variable "instance_type" {
    default = "t3a.micro"
}