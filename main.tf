provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-04aa00acb1165b32a"
instance_type = "t2.medium"
key_name = "Unixserver"
vpc_security_group_ids = ["sg-06532f4ed9cad6107"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
