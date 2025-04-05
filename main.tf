provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-04aa00acb1165b32a"
instance_type = "t2.medium"
key_name = "Unixserver"
vpc_security_group_ids = ["sg-09a3b24eee1e5d4b9"]
tags = {
Name = var.instance_names[count.index]
}
}
