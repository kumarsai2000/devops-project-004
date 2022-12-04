resource "aws_instance" "dev_server" {
ami = var.ami_id
instance_type = var.instance_type
key_name = var.key_name
tags = {
Name = var.name
Environment = "dev"
}
}
