provider "aws" {
region = "eu-north-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0a2370e7c0f21e179"
instance_type = "t2.medium"
key_name = "projectnetflix"
vpc_security_group_ids = ["sg-0dfeba5382b739e51"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
