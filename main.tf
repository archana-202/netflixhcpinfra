provider "aws" {
region = "eu-north-1"
}

resource "aws_instance" "Archana" {
count = 4
ami = "ami-0a2370e7c0f21e179"
instance_type = "t3.medium"
key_name = "projectnetflix"
vpc_security_group_ids = ["sg-07b63c988c02f9f74"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
