provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-02f624c08a83ca16f"
instance_type ="t2.medium"
key_name = "Unixserver"
vpc_security_groups_ids = ["sg-06532f4ed9cad6107"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2"]
}
